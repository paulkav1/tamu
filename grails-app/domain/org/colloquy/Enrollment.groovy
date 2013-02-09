package org.colloquy

class Enrollment {
	String enrollmentId
	String studentId
	String firstName
	String lastname
	String courseId
	String sectionId
	String courseTitle
	Date startDate
	Date endDate
	String status
	String program
	String selectMajorCode
	String majorDesc
	String credithours
	String registrationStatus
	String registrationDesc
	Date registrationDate
	
    static constraints = {
		enrollmentId (blank:false, unique:true)
		studentId (blank:false)
		firstName (nullable:true)
		lastname (nullable:true)
		courseId (nullable:true)
		sectionId (nullable:true)
		courseTitle (nullable:true)
		startDate (nullable:true)
		endDate (nullable:true)
		status (nullable:true)
		program (nullable:true)
		selectMajorCode (nullable:true)
		majorDesc (nullable:true)
		credithours (nullable:true)
		registrationStatus (nullable:true)
		registrationDesc (nullable:true)
		registrationDate (nullable:true)
    }
}
