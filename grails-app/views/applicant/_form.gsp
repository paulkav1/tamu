<%@ page import="org.colloquy.Applicant" %>



<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'studentId', 'error')} required">
	<label for="studentId">
		<g:message code="applicant.studentId.label" default="Student Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentId" required="" value="${applicantInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'colloquyId', 'error')} ">
	<label for="colloquyId">
		<g:message code="applicant.colloquyId.label" default="Colloquy Id" />
		
	</label>
	<g:textField name="colloquyId" value="${applicantInstance?.colloquyId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="applicant.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${applicantInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="applicant.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${applicantInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="applicant.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${applicantInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'suffix', 'error')} ">
	<label for="suffix">
		<g:message code="applicant.suffix.label" default="Suffix" />
		
	</label>
	<g:textField name="suffix" value="${applicantInstance?.suffix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="applicant.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" value="${applicantInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'addressLine1', 'error')} ">
	<label for="addressLine1">
		<g:message code="applicant.addressLine1.label" default="Address Line1" />
		
	</label>
	<g:textField name="addressLine1" value="${applicantInstance?.addressLine1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'addressLine2', 'error')} ">
	<label for="addressLine2">
		<g:message code="applicant.addressLine2.label" default="Address Line2" />
		
	</label>
	<g:textField name="addressLine2" value="${applicantInstance?.addressLine2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'addressLine3', 'error')} ">
	<label for="addressLine3">
		<g:message code="applicant.addressLine3.label" default="Address Line3" />
		
	</label>
	<g:textField name="addressLine3" value="${applicantInstance?.addressLine3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="applicant.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${applicantInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="applicant.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${applicantInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="applicant.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" value="${applicantInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'countryCode', 'error')} ">
	<label for="countryCode">
		<g:message code="applicant.countryCode.label" default="Country Code" />
		
	</label>
	<g:textField name="countryCode" value="${applicantInstance?.countryCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'homePhone', 'error')} ">
	<label for="homePhone">
		<g:message code="applicant.homePhone.label" default="Home Phone" />
		
	</label>
	<g:textField name="homePhone" value="${applicantInstance?.homePhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'cellPhone', 'error')} ">
	<label for="cellPhone">
		<g:message code="applicant.cellPhone.label" default="Cell Phone" />
		
	</label>
	<g:textField name="cellPhone" value="${applicantInstance?.cellPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'email1', 'error')} ">
	<label for="email1">
		<g:message code="applicant.email1.label" default="Email1" />
		
	</label>
	<g:textField name="email1" value="${applicantInstance?.email1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'email2', 'error')} ">
	<label for="email2">
		<g:message code="applicant.email2.label" default="Email2" />
		
	</label>
	<g:textField name="email2" value="${applicantInstance?.email2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'expectedStartDate', 'error')} ">
	<label for="expectedStartDate">
		<g:message code="applicant.expectedStartDate.label" default="Expected Start Date" />
		
	</label>
	<g:datePicker name="expectedStartDate" precision="day"  value="${applicantInstance?.expectedStartDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'applicationStatus', 'error')} ">
	<label for="applicationStatus">
		<g:message code="applicant.applicationStatus.label" default="Application Status" />
		
	</label>
	<g:textField name="applicationStatus" value="${applicantInstance?.applicationStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'appliedDate', 'error')} ">
	<label for="appliedDate">
		<g:message code="applicant.appliedDate.label" default="Applied Date" />
		
	</label>
	<g:datePicker name="appliedDate" precision="day"  value="${applicantInstance?.appliedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'institutionAdmittedDate', 'error')} ">
	<label for="institutionAdmittedDate">
		<g:message code="applicant.institutionAdmittedDate.label" default="Institution Admitted Date" />
		
	</label>
	<g:datePicker name="institutionAdmittedDate" precision="day"  value="${applicantInstance?.institutionAdmittedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'termAdmitted', 'error')} ">
	<label for="termAdmitted">
		<g:message code="applicant.termAdmitted.label" default="Term Admitted" />
		
	</label>
	<g:textField name="termAdmitted" value="${applicantInstance?.termAdmitted}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'termDesc', 'error')} ">
	<label for="termDesc">
		<g:message code="applicant.termDesc.label" default="Term Desc" />
		
	</label>
	<g:textField name="termDesc" value="${applicantInstance?.termDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'applicationNumber', 'error')} ">
	<label for="applicationNumber">
		<g:message code="applicant.applicationNumber.label" default="Application Number" />
		
	</label>
	<g:textField name="applicationNumber" value="${applicantInstance?.applicationNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'programAdmittedDate', 'error')} ">
	<label for="programAdmittedDate">
		<g:message code="applicant.programAdmittedDate.label" default="Program Admitted Date" />
		
	</label>
	<g:datePicker name="programAdmittedDate" precision="day"  value="${applicantInstance?.programAdmittedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'programName', 'error')} ">
	<label for="programName">
		<g:message code="applicant.programName.label" default="Program Name" />
		
	</label>
	<g:textField name="programName" value="${applicantInstance?.programName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'programCode', 'error')} ">
	<label for="programCode">
		<g:message code="applicant.programCode.label" default="Program Code" />
		
	</label>
	<g:textField name="programCode" value="${applicantInstance?.programCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'selectMajorCode', 'error')} ">
	<label for="selectMajorCode">
		<g:message code="applicant.selectMajorCode.label" default="Select Major Code" />
		
	</label>
	<g:textField name="selectMajorCode" value="${applicantInstance?.selectMajorCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'majorDesc', 'error')} ">
	<label for="majorDesc">
		<g:message code="applicant.majorDesc.label" default="Major Desc" />
		
	</label>
	<g:textField name="majorDesc" value="${applicantInstance?.majorDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'international', 'error')} ">
	<label for="international">
		<g:message code="applicant.international.label" default="International" />
		
	</label>
	<g:textField name="international" value="${applicantInstance?.international}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicantInstance, field: 'uscitizen', 'error')} ">
	<label for="uscitizen">
		<g:message code="applicant.uscitizen.label" default="Uscitizen" />
		
	</label>
	<g:textField name="uscitizen" value="${applicantInstance?.uscitizen}"/>
</div>

