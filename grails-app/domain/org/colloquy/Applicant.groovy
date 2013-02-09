package org.colloquy

class Applicant {
	String studentId
	String colloquyId
	String lastName
	String firstName
	String middleName
	String suffix
	String userName
	String addressLine1
	String addressLine2
	String addressLine3
	String city
	String state
	String postalCode
	String countryCode
	String homePhone
	String cellPhone
	String email1
	String email2
	Date expectedStartDate
	String applicationStatus
	Date appliedDate
	Date institutionAdmittedDate
	String termAdmitted
	String termDesc
	String applicationNumber
	Date programAdmittedDate
	String programName
	String programCode
	String selectMajorCode
	String majorDesc
	String international
	String uscitizen	
	
    static constraints = {
		 studentId(blank:false, unique:true)
		 colloquyId(nullable:true)
		 lastName(blank:false)
		 firstName(nullable: true)
		 middleName(nullable: true)
		 suffix(nullable: true)
		 userName(nullable: true)
		 addressLine1(nullable: true)
		 addressLine2(nullable: true)
		 addressLine3(nullable: true)
		 city(nullable: true)
		 state(nullable: true)
		 postalCode(nullable: true)
		 countryCode(nullable: true)
		 homePhone(nullable: true)
		 cellPhone(nullable: true)
		 email1(nullable: true)
		 email2(nullable: true)
		 expectedStartDate(nullable: true)
		applicationStatus (nullable:true)
		appliedDate (nullable:true)
		institutionAdmittedDate (nullable:true)
		termAdmitted (nullable:true)
		termDesc (nullable:true)
		applicationNumber (nullable:true)
		programAdmittedDate (nullable:true)
		programName (nullable:true)
		programCode (nullable:true)
		selectMajorCode (nullable:true)
		majorDesc (nullable:true)
		international (nullable:true)
		uscitizen (nullable:true)
    }
	static hasMany = [docs:DocumentData]
	static mapping = {docs cascade:"all,delete-orphan"}
	def getExpandableDocList() {
		return LazyList.decorate(docs,FactoryUtils.instantiateFactory(DocumentData.class))
	}
	
}
