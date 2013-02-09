package org.colloquy

class Student {
	String firstName
	String lastname
	String studentId
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
	String collegeCode
	String collegeDesc
	String degreeCode
	String degreeDesc
	String selectMajorCode
	String majorDesc
	String acadstatus
	String acadStatDesc
	String expgraddate
	String graduated
	Date gradDate
	
    static constraints = {
		studentId (blank:false, unique:true)
		firstName (nullable:true)
		lastname (nullable:true)
		addressLine1 (nullable:true)
		addressLine2 (nullable:true)
		addressLine3 (nullable:true)
		city (nullable:true)
		state (nullable:true)
		postalCode (nullable:true)
		countryCode (nullable:true)
		homePhone (nullable:true)
		cellPhone (nullable:true)
		email1 (nullable:true)
		email2 (nullable:true)
		expectedStartDate (nullable:true)
		collegeCode (nullable:true)
		collegeDesc (nullable:true)
		degreeCode (nullable:true)
		degreeDesc (nullable:true)
		selectMajorCode (nullable:true)
		majorDesc (nullable:true)
		acadstatus (nullable:true)
		acadStatDesc (nullable:true)
		expgraddate (nullable:true)
		graduated (nullable:true)
		gradDate (nullable:true)
    }
}
