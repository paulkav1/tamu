<%@ page import="org.colloquy.Student" %>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentId', 'error')} required">
	<label for="studentId">
		<g:message code="student.studentId.label" default="Student Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentId" required="" value="${studentInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="student.firstName.label" default="First Name" />		
	</label>
	<g:textField name="firstName" value="${studentInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="student.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${studentInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addressLine1', 'error')} ">
	<label for="addressLine1">
		<g:message code="student.addressLine1.label" default="Address Line1" />		
	</label>
	<g:textField name="addressLine1" value="${studentInstance?.addressLine1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addressLine2', 'error')} ">
	<label for="addressLine2">
		<g:message code="student.addressLine2.label" default="Address Line2" />		
	</label>
	<g:textField name="addressLine2" value="${studentInstance?.addressLine2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'addressLine3', 'error')} ">
	<label for="addressLine3">
		<g:message code="student.addressLine3.label" default="Address Line3" />		
	</label>
	<g:textField name="addressLine3" value="${studentInstance?.addressLine3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="student.city.label" default="City" />		
	</label>
	<g:textField name="city" value="${studentInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="student.state.label" default="State" />		
	</label>
	<g:textField name="state" value="${studentInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="student.postalCode.label" default="Postal Code" />		
	</label>
	<g:textField name="postalCode" value="${studentInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'countryCode', 'error')} ">
	<label for="countryCode">
		<g:message code="student.countryCode.label" default="Country Code" />		
	</label>
	<g:textField name="countryCode" value="${studentInstance?.countryCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'homePhone', 'error')} ">
	<label for="homePhone">
		<g:message code="student.homePhone.label" default="Home Phone" />		
	</label>
	<g:textField name="homePhone" value="${studentInstance?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'cellPhone', 'error')} ">
	<label for="cellPhone">
		<g:message code="student.cellPhone.label" default="Cell Phone" />		
	</label>
	<g:textField name="cellPhone" value="${studentInstance?.cellPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email1', 'error')} ">
	<label for="email1">
		<g:message code="student.email1.label" default="Email1" />		
	</label>
	<g:textField name="email1" value="${studentInstance?.email1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email2', 'error')} ">
	<label for="email2">
		<g:message code="student.email2.label" default="Email2" />		
	</label>
	<g:textField name="email2" value="${studentInstance?.email2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'expectedStartDate', 'error')} ">
	<label for="expectedStartDate">
		<g:message code="student.expectedStartDate.label" default="Expected Start Date" />		
	</label>
	<g:datePicker name="expectedStartDate" precision="day"  value="${studentInstance?.expectedStartDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'collegeCode', 'error')} ">
	<label for="collegeCode">
		<g:message code="student.collegeCode.label" default="College Code" />		
	</label>
	<g:textField name="collegeCode" value="${studentInstance?.collegeCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'collegeDesc', 'error')} ">
	<label for="collegeDesc">
		<g:message code="student.collegeDesc.label" default="College Desc" />		
	</label>
	<g:textField name="collegeDesc" value="${studentInstance?.collegeDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'degreeCode', 'error')} ">
	<label for="degreeCode">
		<g:message code="student.degreeCode.label" default="Degree Code" />		
	</label>
	<g:textField name="degreeCode" value="${studentInstance?.degreeCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'degreeDesc', 'error')} ">
	<label for="degreeDesc">
		<g:message code="student.degreeDesc.label" default="Degree Desc" />		
	</label>
	<g:textField name="degreeDesc" value="${studentInstance?.degreeDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'selectMajorCode', 'error')} ">
	<label for="selectMajorCode">
		<g:message code="student.selectMajorCode.label" default="Select Major Code" />		
	</label>
	<g:textField name="selectMajorCode" value="${studentInstance?.selectMajorCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'majorDesc', 'error')} ">
	<label for="majorDesc">
		<g:message code="student.majorDesc.label" default="Major Desc" />		
	</label>
	<g:textField name="majorDesc" value="${studentInstance?.majorDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'acadstatus', 'error')} ">
	<label for="acadstatus">
		<g:message code="student.acadstatus.label" default="Acadstatus" />		
	</label>
	<g:textField name="acadstatus" value="${studentInstance?.acadstatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'acadStatDesc', 'error')} ">
	<label for="acadStatDesc">
		<g:message code="student.acadStatDesc.label" default="Acad Stat Desc" />		
	</label>
	<g:textField name="acadStatDesc" value="${studentInstance?.acadStatDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'expgraddate', 'error')} ">
	<label for="expgraddate">
		<g:message code="student.expgraddate.label" default="Expgraddate" />		
	</label>
	<g:textField name="expgraddate" value="${studentInstance?.expgraddate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'graduated', 'error')} ">
	<label for="graduated">
		<g:message code="student.graduated.label" default="Graduated" />
	</label>
	<g:textField name="graduated" value="${studentInstance?.graduated}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'gradDate', 'error')} ">
	<label for="gradDate">
		<g:message code="student.gradDate.label" default="Grad Date" />	
	</label>
	<g:datePicker name="gradDate" precision="day"  value="${studentInstance?.gradDate}" default="none" noSelection="['': '']" />
</div>