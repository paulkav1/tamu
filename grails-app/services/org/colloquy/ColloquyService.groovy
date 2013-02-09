package org.colloquy
import grails.util.GrailsUtil

class ColloquyService {
	def static maxPaginate = 100
	def getMaxPaginate(){
		return maxPaginate
	}
	
	def getPaginate(){
		try{
			def fd = new File("${pickPath()}paginate.txt")
			fd.withReader{r->
				maxPaginate = r.readLine().toInteger()
				println "setting pagination to $maxPaginate"
			}
		}catch(e){ // if there is no control file, go with 100
			maxPaginate = 100
		}
	}
	
	def pickDb(){
		def sql
		switch(GrailsUtil.environment){
			case "development":
				//sql = groovy.sql.Sql.newInstance("jdbc:mysql://localhost:3306/test", "root", "Ferret55", "com.mysql.jdbc.Driver")
				sql = groovy.sql.Sql.newInstance("jdbc:jtds:sqlserver://localhost:1433/sugarcrm", "sa", "Ferret55", "net.sourceforge.jtds.jdbc.Driver")
			break
			case "test":
				sql = groovy.sql.Sql.newInstance("jdbc:jtds:sqlserver://localhost:1433/sugarcrm", "sa", "Ferret55", "net.sourceforge.jtds.jdbc.Driver")
			break
			case "production":
				sql = groovy.sql.Sql.newInstance("jdbc:jtds:sqlserver://CQPSQLC01:4653/sugarcrm", "schemaspy", "sspy", "net.sourceforge.jtds.jdbc.Driver")
			break
		}
	}
		
	def emailDb(em){
		def sql = pickDb()
		def r = sql.firstRow("Select id From SugarCRM.dbo.email_addresses Where email_address = '$em'")
		if (r?.id == null){
			return false
		} 
		sql.execute("Delete SugarCRM.dbo.email_addr_bean_rel Where email_address_id = ${r.id}")
		sql.execute("Delete SugarCRM.dbo.email_addresses Where email_address = '$em'")
		sql.close()
		return true
	}
	
	def getSugar(id){
		if (id == null){
			return null
		} //for this app (TAMU), sugar id not existing is a normal case, means its not paired yet.
		def sid = id.toInteger()
		def sql = pickDb()
		def r = sql.firstRow("""select l.first_name, l.last_name, l.status, l.primary_address_country as country, u.first_name as adv1,
			u.last_name as adv2, lc.lead_source_id_c as leadsrc, lc.schoolname_c as school, lc.programname_c as program, at.AwardType, p.currentlda, 
			lead_source_description, opportunity_name, p.username, l.date_entered, lc.hot_note_c, l.primary_address_city, l.primary_address_state, 
			l.id as sugId, lc.term_interested_in_c, lc.number_of_contacts_c, lc.profile_complete_c, lc.profile_complete_date_c,
			l.phone_home, l.phone_mobile, l.phone_work, a.UserName as ssa 
			from SugarCRM.dbo.leads_cstm lc
			left join SugarCRM.dbo.leads l on lc.id_c = l.id
			left join SugarCRM.dbo.users u on u.id = l.assigned_user_id
			left join clqoltp.dbo.clqperson p on l.id = p.sugarleadid
			left join CLQoltp.dbo.clqPerson a on p.SuccessAdvisorID = a.PersonID
			left join clqoltp.dbo.clqAwardType at on at.ID = lc.award_c
			where lc.studentid_c = $sid""")
		
		def sugar = [fname: r.first_name, lname: r.last_name, hotnote: r.hot_note_c, ufname: r.adv1, ulname: r.adv2, status: r.status, school: r.school, 
		program: r.program, award: r.awardtype, user: r.username, city: r.primary_address_city, state: r.primary_address_state, start: r.date_entered, 
		source: r.lead_source_description, home: r.phone_home, mobile: r.phone_mobile, work: r.phone_work, contacts: r.number_of_contacts_c,
		term: r.term_interested_in_c, sugar: r.sugId, profdate: r.profile_complete_date_c, lda: r.currentlda, ssa: r.ssa]
		
		sql.close()
		return sugar
	}
	
	def getPlan(id){
		def plan = [:]
		def sql = pickDb()
	
		def c = sql.firstRow("""select schoolname_c, programname_c, award_c from sugarcrm.dbo.leads_cstm where studentid_c = $id""")
			
		//hack for Adelaide awards
		def school = c.schoolname_c
		def prog = c.programname_c
		if (school == 'ADELAIDE' && prog == 'MAPM'){
			switch(c.award_c){
				case '3': prog = 'DAPM'; break
				case '2': prog = 'CAPM'; break
				default:  prog = 'MAPM'
			}
		}			
		sql.eachRow("""select c.title, c.description, cp.elective 
			from clqoltp.dbo.clqCourseProgram cp
			left join clqoltp.dbo.clqCourse c on cp.CourseId = c.CourseId
			left join clqoltp.dbo.clqProgram p on cp.ProgramId = p.ProgramId
			left join clqoltp.dbo.cluSchool s on p.SchoolId = s.ID
			where s.name = '$school' and p.title = '$prog' order by c.title"""){r->
				plan[r.title] = [description: r.description, elective: r.elective]
		}
		sql.close()
		return [plan: plan]
	}
	
	def getTranscript(id){
		def transcript = [:]
		def sql = pickDb()
		sql.eachRow("""SELECT c.Title as coursecode, c.Description as coursename, tg.GroupName as term 
		  FROM clqoltp.dbo.clqPerson p
		  left join clqoltp.dbo.clqRegistration r on r.PersonId = p.PersonID
		  left join clqoltp.dbo.clqCourseTerm ct on ct.CourseTermID = r.CourseTermID
		  left join clqoltp.dbo.clqCourse c on c.CourseID = ct.CourseID
		  left join clqoltp.dbo.clqTerm t on t.TermID = ct.TermID
		  left join clqoltp.dbo.clqTermGroup tg on tg.ID = t.TermGroupID
		  where p.StudentId = ${id.toInteger()}
		  order by coursecode"""){r->
			transcript[r.coursecode] = r.coursename
		}
		sql.close()		
		return [transcript: transcript]
	}
	
	def getActive(params){
		def active = [:]
		def sql = pickDb()
		def sortOrder = getSortOrder(params.sort, params.order)
		// pagination
		if (params.offset == null){params.offset = 0}
		if (params.max == null){params.max = 9999}
		def start = params.offset.toInteger()
		def end = start + params.max.toInteger()
		def c = sql.firstRow("""Select count(*) as activetotal FROM CLQoltp.dbo.clqPerson p
		  left join sugarcrm.dbo.leads l on l.id = p.SugarLeadID
		  where p.PrimaryRole = 1 and l.status in ('Active', 'Active - First Term')""")
		def rowcount = c.activetotal
		
		String sqlStr = """SELECT PersonID, first_name, last_name, school, program,	StudentId, lda, ssa FROM (
		SELECT p.PersonID,l.first_name, l.last_name, lc.schoolname_c as school, lc.programname_c as program,
		  p.StudentId, p.currentlda as lda, a.UserName as ssa, ROW_NUMBER() OVER (${sortOrder}) AS RowNum
		  FROM CLQoltp.dbo.clqPerson p
		  left join sugarcrm.dbo.leads l on l.id = p.SugarLeadID
		  left join sugarcrm.dbo.leads_cstm lc on l.id = lc.id_c 
		  left join CLQoltp.dbo.clqPerson a on p.SuccessAdvisorID = a.PersonID
		  where p.PrimaryRole = 1 and l.status in ('Active', 'Active - First Term')
		) AS MyDerivedTable WHERE MyDerivedTable.RowNum BETWEEN ${start} and ${end}"""
		sql.eachRow(sqlStr){r->
			active[r.StudentId] = [fname: r.first_name, lname: r.last_name, ssa: r.ssa, school: r.school, program: r.program, lda: r.lda]
		}
		sql.close()	
		return [active: active, count: rowcount]
	}

	def getSortOrder(sort, order){
		def sqlStr
		switch (sort){
			case "program": sqlStr = 'order by lc.schoolname_c, lc.programname_c'; break
			case "colloquyId": sqlStr = 'order by p.StudentID'; break
			case "lname": sqlStr = 'order by l.last_name'; break
			case "ssa": sqlStr = 'order by a.UserName' ; break
			case "lda": sqlStr = 'order by p.currentlda' ; break
			default: sqlStr = 'order by a.UserName, p.currentlda desc'
		}
		if (order == 'desc'){
			sqlStr += ' desc'
		}
		return sqlStr
	}
	
	def searchAllSugar(params){
		def sql = pickDb()
		def sugar = [:]
		def i = 4001
		//to replace blanks in search with impossible matches...
		def email = 'ZZZZZZZZZZZZZZZZ'
		def phone = '9995559999'
		def name = 'ZZZZZZZZZZZZZZZZ'
		if (params.email != ''){email = params.email}
		if (params.phone != ''){phone = params.phone}
		if (params.lastName != ''){name = params.lastName}
		
		//TODO: search multiple phones and emails		
		sql.eachRow("""SELECT studentid_c,first_name,last_name,email_address,phone_home,phone_work, programname_c,schoolname_c
		 FROM sugarcrm.dbo.leads l    
		 left join sugarcrm.dbo.leads_cstm on l.id = id_c
		 left join SugarCRM.dbo.email_addr_bean_rel eb ON l.id=eb.bean_id
		 left join SugarCRM.dbo.email_addresses addr on eb.email_address_id=addr.id
		 where phone_home = '${phone}' or phone_work = '${phone}' or email_address = '${email}' or last_name like '${name}'"""){r->
			sugar[i] = [sid: r.studentid_c, fname: r.first_name, lname: r.last_name, email: r.email_address, home: r.phone_home, 
			work: r.phone_work,	school: r.schoolname_c, program: r.programname_c]
			++i
		}
		sql.close()
		
		// rank hits and build sorted map:
		// 1. fname, phone, or email exact match
		// 2. school/program match
		// 3. anything else
		def ns = [:]
		sugar.each(){k, v->
			if (v.fname.toUpperCase() == params.firstName.toUpperCase() || v.home == params.phone || v.work == params.phone || v.email == params.email){
				ns[k - 3000] = v
			}
			else if (v.school == params.school && v.program == params.program){
				ns[k - 2000] = v
			}
			else if (v.school == params.school || v.program == params.program){
				ns[k - 1000] = v
			}
			else{
				ns[k] = v
			}
		}
		sugar = [:]
		(1..i).each{k->
			if (ns.containsKey(k)){
				sugar[k] = ns[k]
			}
		}
		return [sugar: sugar.values()]
	}
	
	def insertLead(params){
	// Put a new lead, derived from the TAMUC applicant file, into lead import and so into Sugar
	// Issues: 
	// 1. There is a minute or so delay. On completion, returns you to search results - but because of the delay the record will not be there yet, 
	// 2. so need to delay the display and/or disable the insert function or they will surely do it again, creating a duplicate!
	// 3. Not sure how well the codes map between TAMU and Sugar, so hard-coded country and program, etc.
		def str = "studentInformationXML=<sif><sifheader VendorID='60559' SourceCode='6' SIFID='278' CampaignID='10'></sifheader>"
        def app = Applicant.get(params.id)
		def sw = new StringWriter()
		def xml = new groovy.xml.MarkupBuilder(sw)
		xml.sifdetail{
			FirstName(app.firstName)
			LastName(app.lastName)
			Email(app.email1)
			WorkPhone(app.homePhone?app.homePhone:app.cellPhone)
			State(app.state)
			Country("US")
			Program("MGEL")
			EducationLevel("Bachelors")
			GPA("3.0 and above")
		}
		str += sw
		str += "</sif>"
		def leadImport
		switch(GrailsUtil.environment){
			case "development":
				leadImport = new URL("http://leads.colloquy360.com/Leads/LeadImport.asmx/TestImport")
			break
			case "production":		
				leadImport = new URL("http://leads.colloquy360.com/Leads/LeadImport.asmx/Import")
			break
		}
		def cn = leadImport.openConnection()
		cn.setRequestMethod("POST")
		cn.doOutput = true
		Writer writer = new OutputStreamWriter(cn.outputStream)
		writer.write(str)
		writer.flush()
		writer.close()
		cn.connect()
		if (cn.responseCode == 200){
			println cn.content.text
		}else{
			println "${cn.responseCode}: ${cn.responseMessage}"
		}
		return [firstName:app.firstName, lastName:app.lastName, email:app.email1]
	}
}