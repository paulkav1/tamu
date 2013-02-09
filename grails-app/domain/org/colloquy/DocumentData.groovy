package org.colloquy

class DocumentData {
	String docId
	String studentId
	String missingDoc
	String receivedDoc
	String lastName
	String firstName
	String prefix
	String termCode
	String termDesc
	String applicationNumber
	String degreeCode
	String degreeDesc
	String selectMajorCode
	String majorDesc
	String levelCode
	String levelDesc
	String missingDocDesc
	String missingComment
	String receivedDocDesc
	String receivedComment
	Date documentReceiveDate
	String personalEmail
	String homePhoneArea
	String homePhoneNo
	
    static constraints = {
		docId (blank:false, unique:true)
		studentId (blank:false)
		missingDoc (nullable:true)
		receivedDoc (nullable:true)
		lastName (nullable:true)
		firstName (nullable:true)
		prefix (nullable:true)
		studentId (nullable:true)
		termCode (nullable:true)
		termDesc (nullable:true)
		applicationNumber (nullable:true)
		degreeCode (nullable:true)
		degreeDesc (nullable:true)
		selectMajorCode (nullable:true)
		majorDesc (nullable:true)
		levelCode (nullable:true)
		levelDesc (nullable:true)
		missingDocDesc (nullable:true)
		missingComment (nullable:true)
		receivedDocDesc (nullable:true)
		receivedComment (nullable:true)
		documentReceiveDate (nullable:true)
		personalEmail (nullable:true)
		homePhoneArea (nullable:true)
		homePhoneNo (nullable:true)
    }
	static belongsTo = Applicant
	boolean _deleted
	static transients = [ '_deleted' ]
 	
}