package org.colloquy
import grails.util.GrailsUtil

class LoadService {
	def colloquyService
	def static filedates = [:]

	def getFiledates(){
		return filedates
	}
	
	def pickPath(){
		def fp
		switch(GrailsUtil.environment){
			case "development": fp = "C://data//"; break
			case "test": fp = "C://data//"; break
			case "production": fp = "e://tamuc//"; break
		}
	}
	
	def parseDate(d){
		def df1 = new java.text.SimpleDateFormat("MM/dd/yyyy")
		try{
			def gooddate = df1.parse(d.toString())
		}catch(java.text.ParseException pe){
			return null //if its not a good date its a null
		}
	}
	
	def loadFiles(){
		try{
			def fd = new File("${pickPath()}filedates.txt")
			fd.withReader{r->
				filedates["Applicant"] = r.readLine()
				filedates["Enrollment"] = r.readLine()
				filedates["Student"] = r.readLine()
				filedates["Document"] = r.readLine()
			}
		}catch(e){ // if there is no control file, make one to get started
			println e
			filedates = ["Applicant": "1/1/2001", "Enrollment": "1/1/2001", "Student": "1/1/2001", "Document": "1/1/2001"]		
		}

		try{
			def f = new File("${pickPath()}Applicant.xml")	
			def d = new Date(f.lastModified()).toString()
			def c = 0
			println "Checking files at ${f} on ${new Date()}:"
			def sql = colloquyService.pickDb()
			
			if (filedates["Applicant"] == d){	
				println "applicant file unchanged"
			}else{
				filedates["Applicant"] = d
				c = loadApplicant(f)
				println "applicant file loaded ${c.toString()}"
			}
			
			f = new File("${pickPath()}Enrollment.xml")	
			d = new Date(f.lastModified()).toString()
			
			if (filedates["Enrollment"] == d){	
				println "enrollment file unchanged"
			}else{	
				filedates["Enrollment"] = d
				sql.execute("truncate table sugarcrm.dbo.enrollment")		//added 11-10-2012 to flush enrollment table each time
				c = loadEnrollment(f)
				println "enrollment file loaded ${c.toString()}"
			}
			
			f = new File("${pickPath()}Student.xml")	
			d = new Date(f.lastModified()).toString()
			
			if (filedates["Student"] == d){	
				println "student file unchanged"
			}else{	
				filedates["Student"] = d
				c = loadStudent(f)
				println "student file loaded ${c.toString()}"
			}
			
			f = new File("${pickPath()}Document.xml")	
			d = new Date(f.lastModified()).toString()
			
			if (filedates["Document"] == d){	
				println "document file unchanged"
			}else{	
				filedates["Document"] = d
				c = loadDocument(f)
				println "document file loaded ${c.toString()}"
			}	
		}catch(e){
			println e.toString()
		}
		
		def fd2 = new File("${pickPath()}filedates.txt")		
		fd2.delete()
		filedates.each{k, v->
			fd2 << v
			fd2 << '\n'
		}
	}
	
	def loadApplicant(f){
		def c = 0
		f.eachLine{ln->
			if (ln[0..10].toString() == "<applicant>"){
				def app = new XmlSlurper().parseText(ln)
				def newapp = new Applicant()
				def testapp = Applicant.findAllByStudentIdLike(app.studentId.toString())
				if (testapp.size() == 1){
					newapp = Applicant.get(testapp[0].id)
				}
				newapp.studentId = app.studentId.toString()
				newapp.lastName = app.lastName.toString()
				newapp.firstName = app.firstName.toString()
				newapp.middleName = app.middleName.toString()
				newapp.suffix = app.suffix.toString()
				newapp.userName = app.userName.toString()
				newapp.addressLine1 = app.addressLine1.toString()
				newapp.addressLine2 = app.addressLine2.toString()
				newapp.addressLine3 = app.addressLine3.toString()
				newapp.city = app.city.toString()
				newapp.state = app.state.toString()
				newapp.postalCode = app.postalCode.toString()
				newapp.countryCode = app.countryCode.toString()
				newapp.homePhone = app.homePhone.toString()
				newapp.cellPhone = app.cellPhone.toString()
				newapp.email1 = app.email1.toString()
				newapp.email2 = app.email2.toString()
				newapp.expectedStartDate = parseDate(app.expectedStartDate)
				newapp.applicationStatus = app.applicationStatus.toString()
				newapp.appliedDate = parseDate(app.appliedDate)
				newapp.institutionAdmittedDate = parseDate(app.institutionAdmittedDate)
				newapp.termAdmitted = app.termAdmitted.toString()
				newapp.termDesc = app.termDesc.toString()
				newapp.applicationNumber = app.applicationNumber.toString()
				newapp.programAdmittedDate = parseDate(app.programAdmittedDate)
				newapp.programName = app.programName.toString()
				newapp.programCode = app.programCode.toString()
				newapp.selectMajorCode = app.SelectMajorCode.toString()
				newapp.majorDesc = app.majorDesc.toString()
				newapp.international = app.international.toString()
				newapp.uscitizen = app.uscitizen.toString()

				if (newapp.save()){
					++c
				}else{
					newapp.errors.each{ 
						error -> println error 
					} 
				}
			}
		}
		return c
	}
		
	def loadEnrollment(f){
		def c = 0
		f.eachLine{ln->
			if (ln[0..11].toString() == "<enrollment>"){
				def en = new XmlSlurper().parseText(ln)
				def newen = new Enrollment()
				def testen = Enrollment.findAllByEnrollmentIdLike(en.enrollmentId.toString())
				if (testen.size() == 1){
					newen = Enrollment.get(testen[0].id)
				}
				newen.studentId = en.studentId.toString()
				newen.firstName = en.firstName.toString()	 
				newen.lastname = en.lastname.toString()
				newen.courseId = en.courseId.toString()
				newen.sectionId = en.sectionId.toString()
				newen.courseTitle = en.courseTitle.toString()	 
				newen.enrollmentId = en.enrollmentId.toString()
				newen.startDate = parseDate(en.startDate)
				newen.endDate = parseDate(en.endDate)
				newen.status = en.status.toString()
				newen.program = en.program.toString()	 
				newen.selectMajorCode = en.SelectMajorCode.toString()
				newen.majorDesc = en.majorDesc.toString()
				newen.credithours = en.credithours.toString()
				newen.registrationStatus = en.registrationStatus.toString()
				newen.registrationDesc = en.registrationDesc.toString()
				newen.registrationDate = parseDate(en.registrationDate)		

				if (newen.save()){ 
					++c
				}else{
					newen.errors.each{ 
						error -> println error 
					} 
				}
			}
		}
		return c
	}
		
	def loadStudent(f){
		def c = 0
		f.eachLine{ln->
			if (ln[0..8].toString() == "<student>"){
				def stu = new XmlSlurper().parseText(ln)
				def newstu = new Student()
				def teststu = Student.findAllByStudentIdLike(stu.studentId.toString())
				if (teststu.size() == 1){
					newstu = Student.get(teststu[0].id)
				}
				newstu.firstName = stu.firstName.toString()
				newstu.lastname = stu.lastname.toString()
				newstu.studentId = stu.studentId.toString()
				newstu.addressLine1 = stu.addressLine1.toString()
				newstu.addressLine2 = stu.addressLine2.toString()
				newstu.addressLine3 = stu.addressLine3.toString()
				newstu.city = stu.city.toString()
				newstu.state = stu.state.toString()
				newstu.postalCode = stu.postalCode.toString()
				newstu.countryCode = stu.countryCode.toString()
				newstu.homePhone = stu.homePhone.toString()
				newstu.cellPhone = stu.cellPhone.toString()
				newstu.email1 = stu.email1.toString()
				newstu.email2 = stu.email2.toString()
				newstu.expectedStartDate = parseDate(stu.expectedStartDate.toString())
				newstu.collegeCode = stu.collegeCode.toString()
				newstu.collegeDesc = stu.collegeDesc.toString()
				newstu.degreeCode = stu.degreeCode.toString()
				newstu.degreeDesc = stu.degreeDesc.toString()
				newstu.selectMajorCode = stu.SelectMajorCode.toString()
				newstu.majorDesc = stu.majorDesc.toString()
				newstu.acadstatus = stu.acadstatus.toString()
				newstu.acadStatDesc = stu.acadStatDesc.toString()
				newstu.expgraddate = stu.expgraddate.toString()
				newstu.graduated = stu.graduated.toString()
				newstu.gradDate = parseDate(stu.gradDate)

				if (newstu.save()){ 
					++c
				}else{
					newstu.errors.each{ 
						error -> println error 
					} 
				}
			}
		}
		return c
	}
		
	def loadDocument(f){
		def c = 0
		f.eachLine{ln->
			if (ln[0..13].toString() == "<documentData>"){
				def doc = new XmlSlurper().parseText(ln)
				def newdoc = new DocumentData()
				def docId = doc.studentId.toString() + doc.receivedDoc.toString()
				if (docId.size() < 10){
					docId += doc.missingDoc.toString()
				}
				def testdoc = DocumentData.findAllByDocIdLike(docId)
				if (testdoc.size() == 1){
					newdoc = DocumentData.get(testdoc[0].id)
				}
				newdoc.docId = docId
				newdoc.studentId = doc.studentId.toString()
				newdoc.receivedDoc = doc.receivedDoc.toString()
				newdoc.missingDoc = doc.missingDoc.toString()
				newdoc.lastName = doc.lastName.toString()
				newdoc.firstName = doc.firstName.toString()
				newdoc.prefix = doc.prefix.toString()
				newdoc.termCode = doc.termCode.toString()
				newdoc.termDesc = doc.termDesc.toString()
				newdoc.applicationNumber = doc.applicationNumber.toString()
				newdoc.degreeCode = doc.degreeCode.toString()
				newdoc.degreeDesc = doc.degreeDesc.toString()
				newdoc.selectMajorCode = doc.SelectMajorCode.toString()
				newdoc.majorDesc = doc.majorCode.toString()
				newdoc.levelCode = doc.levelCode.toString()
				newdoc.missingDocDesc = doc.missingDocDesc.toString()
				newdoc.missingComment = doc.missingComment.toString()
				newdoc.receivedDocDesc = doc.receivedDocDesc.toString()
				newdoc.receivedComment = doc.receivedComment.toString()
				newdoc.documentReceiveDate = parseDate(doc.documentReceiveDate)
				newdoc.personalEmail = doc.personalEmail.toString()
				newdoc.homePhoneArea = doc.homePhoneArea.toString()
				newdoc.homePhoneNo = doc.homePhoneNo.toString()

				if (newdoc.save()){ 
					++c
				}else{
					newdoc.errors.each{ 
						error -> println error 
					} 
				}
			}
		}
		return c
	}
	
	def dumpApplicantFile(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Applicant.csv")			
		out.delete()
		out << "student_Id,colloquy_Id,last_Name,first_Name,middle_Name,suffix,user_Name,address_Line1,"+
		"address_Line2,address_Line3,city,state,postal_Code,country_Code,home_Phone,cell_Phone,"+
		"email1,email2,expected_Start_Date,application_Status,applied_Date,institution_Admitted_Date,term_Admitted,term_Desc,"+
		"application_Number,program_Admitted_Date,program_Name,program_Code,select_Major_Code,major_Desc,international,uscitizen\n"
		
		sql.eachRow("select * from applicant"){r->
			out << "$r.student_Id,$r.colloquy_Id,$r.last_Name,$r.first_Name,$r.middle_Name,$r.suffix,\"$r.user_Name\",$r.address_Line1,"+
			"$r.address_Line2,$r.address_Line3,$r.city,$r.state,$r.postal_Code,$r.country_Code,$r.home_Phone,$r.cell_Phone,"+
			"$r.email1,$r.email2,$r.expected_Start_Date,$r.application_Status,$r.applied_Date,$r.institution_Admitted_Date,$r.term_Admitted,$r.term_Desc,"+
			"$r.application_Number,$r.program_Admitted_Date,$r.program_Name,$r.program_Code,$r.select_Major_Code,$r.major_Desc,$r.international,$r.uscitizen\n"
		}		
		sql.close()
	}
	
	def dumpStudentFile(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Student.csv")
		out.delete()
		out << "acad_stat_desc,acadstatus,address_line1,address_line2,address_line3,cell_phone,city,college_code,"+
		"college_desc,country_code,degree_code,degree_desc,email1,email2,expected_start_date,expgraddate,first_name,grad_date,"+
		"graduated,home_phone,lastname,major_desc,postal_code,select_major_code,state,student_id\n"

		sql.eachRow("select * from student"){r->
			out << "$r.acad_stat_desc,$r.acadstatus,$r.address_line1,$r.address_line2,$r.address_line3,$r.cell_phone,$r.city,$r.college_code,"+
			"$r.college_desc,$r.country_code,$r.degree_code,$r.degree_desc,$r.email1,$r.email2,$r.expected_start_date,$r.expgraddate,$r.first_name,$r.grad_date,"+
			"$r.graduated,$r.home_phone,$r.lastname,$r.major_desc,$r.postal_code,$r.select_major_code,$r.state,$r.student_id\n"
		}		
		sql.close()
	}
	
	def dumpDocumentFile(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Document.csv")
		out.delete()
		out << "application_number,degree_code,degree_desc,doc_id,document_receive_date,first_name,home_phone_area,"+
		"home_phone_no,last_name,level_code,level_desc,major_desc,missing_comment,missing_doc,missing_doc_desc,personal_email,"+
		"prefix,received_comment,received_doc,received_doc_desc,select_major_code,student_id,term_code,term_desc\n"
		
		sql.eachRow("select * from document_data order by doc_id"){r->
			out << "$r.application_number,$r.degree_code,$r.degree_desc,$r.doc_id,$r.document_receive_date,$r.first_name,$r.home_phone_area,"+
			"$r.home_phone_no,$r.last_name,$r.level_code,$r.level_desc,$r.major_desc,$r.missing_comment,$r.missing_doc,$r.missing_doc_desc,$r.personal_email,"+
			"$r.prefix,$r.received_comment,$r.received_doc,$r.received_doc_desc,$r.select_major_code,$r.student_id,$r.term_code,$r.term_desc\n"
		}		
		sql.close()
	}
	
	def dumpDocumentFileTab(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Document_t.csv")
		out.delete()
		out << "application_number\tdegree_code\tdegree_desc\tdoc_id\tdocument_receive_date\tfirst_name\thome_phone_area\t"+
		"home_phone_no\tlast_name\tlevel_code\tlevel_desc\tmajor_desc\tmissing_comment\tmissing_doc\tmissing_doc_desc\tpersonal_email\t"+
		"prefix\treceived_comment\treceived_doc\treceived_doc_desc\tselect_major_code\tstudent_id\tterm_code\tterm_desc\n"
		
		sql.eachRow("select * from document_data order by doc_id"){r->
			out << "$r.application_number\t$r.degree_code\t$r.degree_desc\t$r.doc_id\t$r.document_receive_date\t$r.first_name\t$r.home_phone_area\t"+
			"$r.home_phone_no\t$r.last_name\t$r.level_code\t$r.level_desc\t$r.major_desc\t$r.missing_comment\t$r.missing_doc\t$r.missing_doc_desc\t$r.personal_email\t"+
			"$r.prefix\t$r.received_comment\t$r.received_doc\t$r.received_doc_desc\t$r.select_major_code\t$r.student_id\t$r.term_code\t$r.term_desc\n"
		}		
		sql.close()
	}
	
	def dumpEnrollmentFile(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Enrollment.csv")
		out.delete()
		out << "course_id,course_title,credithours,end_date,enrollment_id,first_name,lastname,major_desc,program,registration_date,"+
		"registration_desc,registration_status,section_id,select_major_code,start_date,status,student_id\n"
		
		sql.eachRow("select * from enrollment"){r->
			out << "$r.course_id,$r.course_title,$r.credithours,$r.end_date,$r.enrollment_id,$r.first_name,$r.lastname,$r.major_desc,$r.program,$r.registration_date,"+
			"$r.registration_desc,$r.registration_status,$r.section_id,$r.select_major_code,$r.start_date,$r.status,$r.student_id\n"
		}		
		sql.close()
	}
	
	def dumpApplicantFileTab(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Applicant_t.csv")			
		out.delete()
		out << "student_Id\tcolloquy_Id\tlast_Name\tfirst_Name\tmiddle_Name\tsuffix\tuser_Name\taddress_Line1\t"+
		"address_Line2\taddress_Line3\tcity\tstate\tpostal_Code\tcountry_Code\thome_Phone\tcell_Phone\t"+
		"email1\temail2\texpected_Start_Date\tapplication_Status\tapplied_Date\tinstitution_Admitted_Date\tterm_Admitted\tterm_Desc\t"+
		"application_Number\tprogram_Admitted_Date\tprogram_Name\tprogram_Code\tselect_Major_Code\tmajor_Desc\tinternational\tuscitizen\n"
		
		sql.eachRow("select * from applicant"){r->
			out << "$r.student_Id\t$r.colloquy_Id\t$r.last_Name\t$r.first_Name\t$r.middle_Name\t$r.suffix\t\"$r.user_Name\"\t$r.address_Line1\t"+
			"$r.address_Line2\t$r.address_Line3\t$r.city\t$r.state\t$r.postal_Code\t$r.country_Code\t$r.home_Phone\t$r.cell_Phone\t"+
			"$r.email1\t$r.email2\t$r.expected_Start_Date\t$r.application_Status\t$r.applied_Date\t$r.institution_Admitted_Date\t$r.term_Admitted\t$r.term_Desc\t"+
			"$r.application_Number\t$r.program_Admitted_Date\t$r.program_Name\t$r.program_Code\t$r.select_Major_Code\t$r.major_Desc\t$r.international\t$r.uscitizen\n"
		}		
		sql.close()
	}
	
	def dumpStudentFileTab(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Student_t.csv")
		out.delete()
		out << "acad_stat_desc\tacadstatus\taddress_line1\taddress_line2\taddress_line3\tcell_phone\tcity\tcollege_code\t"+
		"college_desc\tcountry_code\tdegree_code\tdegree_desc\temail1\temail2\texpected_start_date\texpgraddate\tfirst_name\tgrad_date\t"+
		"graduated\thome_phone\tlastname\tmajor_desc\tpostal_code\tselect_major_code\tstate\tstudent_id\n"

		sql.eachRow("select * from student"){r->
			out << "$r.acad_stat_desc\t$r.acadstatus\t$r.address_line1\t$r.address_line2\t$r.address_line3\t$r.cell_phone\t$r.city\t$r.college_code\t"+
			"$r.college_desc\t$r.country_code\t$r.degree_code\t$r.degree_desc\t$r.email1\t$r.email2\t$r.expected_start_date\t$r.expgraddate\t$r.first_name\t$r.grad_date\t"+
			"$r.graduated\t$r.home_phone\t$r.lastname\t$r.major_desc\t$r.postal_code\t$r.select_major_code\t$r.state\t$r.student_id\n"
		}		
		sql.close()
	}
	
	def dumpEnrollmentFileTab(){
		def sql = colloquyService.pickDb()
		def out = new File("${pickPath()}Enrollment_t.csv")
		out.delete()
		out << "course_id\tcourse_title\tcredithours\tend_date\tenrollment_id\tfirst_name\tlastname\tmajor_desc\tprogram\tregistration_date\t"+
		"registration_desc\tregistration_status\tsection_id\tselect_major_code\tstart_date\tstatus\tstudent_id\n"
		
		sql.eachRow("select * from enrollment"){r->
			out << "$r.course_id\t$r.course_title\t$r.credithours\t$r.end_date\t$r.enrollment_id\t$r.first_name\t$r.lastname\t$r.major_desc\t$r.program\t$r.registration_date\t"+
			"$r.registration_desc\t$r.registration_status\t$r.section_id\t$r.select_major_code\t$r.start_date\t$r.status\t$r.student_id\n"
		}		
		sql.close()
	}
	
	def analyzeTamuFiles(){
		def analysis = [summary: "analyze not implemented"]
	}
	
}