
<%@ page import="org.colloquy.Applicant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'applicant.label', default: 'Applicant')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-applicant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-applicant" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list applicant">
			
				<g:if test="${applicantInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="applicant.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${applicantInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.colloquyId}">
				<li class="fieldcontain">
					<span id="colloquyId-label" class="property-label"><g:message code="applicant.colloquyId.label" default="Colloquy Id" /></span>
					
						<span class="property-value" aria-labelledby="colloquyId-label"><g:fieldValue bean="${applicantInstance}" field="colloquyId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="applicant.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${applicantInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="applicant.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${applicantInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="applicant.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${applicantInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.suffix}">
				<li class="fieldcontain">
					<span id="suffix-label" class="property-label"><g:message code="applicant.suffix.label" default="Suffix" /></span>
					
						<span class="property-value" aria-labelledby="suffix-label"><g:fieldValue bean="${applicantInstance}" field="suffix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="applicant.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${applicantInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="applicant.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${applicantInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="applicant.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${applicantInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.addressLine3}">
				<li class="fieldcontain">
					<span id="addressLine3-label" class="property-label"><g:message code="applicant.addressLine3.label" default="Address Line3" /></span>
					
						<span class="property-value" aria-labelledby="addressLine3-label"><g:fieldValue bean="${applicantInstance}" field="addressLine3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="applicant.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${applicantInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="applicant.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${applicantInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="applicant.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${applicantInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.countryCode}">
				<li class="fieldcontain">
					<span id="countryCode-label" class="property-label"><g:message code="applicant.countryCode.label" default="Country Code" /></span>
					
						<span class="property-value" aria-labelledby="countryCode-label"><g:fieldValue bean="${applicantInstance}" field="countryCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="applicant.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${applicantInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.cellPhone}">
				<li class="fieldcontain">
					<span id="cellPhone-label" class="property-label"><g:message code="applicant.cellPhone.label" default="Cell Phone" /></span>
					
						<span class="property-value" aria-labelledby="cellPhone-label"><g:fieldValue bean="${applicantInstance}" field="cellPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.email1}">
				<li class="fieldcontain">
					<span id="email1-label" class="property-label"><g:message code="applicant.email1.label" default="Email1" /></span>
					
						<span class="property-value" aria-labelledby="email1-label"><g:fieldValue bean="${applicantInstance}" field="email1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.email2}">
				<li class="fieldcontain">
					<span id="email2-label" class="property-label"><g:message code="applicant.email2.label" default="Email2" /></span>
					
						<span class="property-value" aria-labelledby="email2-label"><g:fieldValue bean="${applicantInstance}" field="email2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.expectedStartDate}">
				<li class="fieldcontain">
					<span id="expectedStartDate-label" class="property-label"><g:message code="applicant.expectedStartDate.label" default="Expected Start Date" /></span>
					
						<span class="property-value" aria-labelledby="expectedStartDate-label"><g:formatDate date="${applicantInstance?.expectedStartDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.applicationStatus}">
				<li class="fieldcontain">
					<span id="applicationStatus-label" class="property-label"><g:message code="applicant.applicationStatus.label" default="Application Status" /></span>
					
						<span class="property-value" aria-labelledby="applicationStatus-label"><g:fieldValue bean="${applicantInstance}" field="applicationStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.appliedDate}">
				<li class="fieldcontain">
					<span id="appliedDate-label" class="property-label"><g:message code="applicant.appliedDate.label" default="Applied Date" /></span>
					
						<span class="property-value" aria-labelledby="appliedDate-label"><g:formatDate date="${applicantInstance?.appliedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.institutionAdmittedDate}">
				<li class="fieldcontain">
					<span id="institutionAdmittedDate-label" class="property-label"><g:message code="applicant.institutionAdmittedDate.label" default="Institution Admitted Date" /></span>
					
						<span class="property-value" aria-labelledby="institutionAdmittedDate-label"><g:formatDate date="${applicantInstance?.institutionAdmittedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.termAdmitted}">
				<li class="fieldcontain">
					<span id="termAdmitted-label" class="property-label"><g:message code="applicant.termAdmitted.label" default="Term Admitted" /></span>
					
						<span class="property-value" aria-labelledby="termAdmitted-label"><g:fieldValue bean="${applicantInstance}" field="termAdmitted"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.termDesc}">
				<li class="fieldcontain">
					<span id="termDesc-label" class="property-label"><g:message code="applicant.termDesc.label" default="Term Desc" /></span>
					
						<span class="property-value" aria-labelledby="termDesc-label"><g:fieldValue bean="${applicantInstance}" field="termDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.applicationNumber}">
				<li class="fieldcontain">
					<span id="applicationNumber-label" class="property-label"><g:message code="applicant.applicationNumber.label" default="Application Number" /></span>
					
						<span class="property-value" aria-labelledby="applicationNumber-label"><g:fieldValue bean="${applicantInstance}" field="applicationNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.programAdmittedDate}">
				<li class="fieldcontain">
					<span id="programAdmittedDate-label" class="property-label"><g:message code="applicant.programAdmittedDate.label" default="Program Admitted Date" /></span>
					
						<span class="property-value" aria-labelledby="programAdmittedDate-label"><g:formatDate date="${applicantInstance?.programAdmittedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.programName}">
				<li class="fieldcontain">
					<span id="programName-label" class="property-label"><g:message code="applicant.programName.label" default="Program Name" /></span>
					
						<span class="property-value" aria-labelledby="programName-label"><g:fieldValue bean="${applicantInstance}" field="programName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.programCode}">
				<li class="fieldcontain">
					<span id="programCode-label" class="property-label"><g:message code="applicant.programCode.label" default="Program Code" /></span>
					
						<span class="property-value" aria-labelledby="programCode-label"><g:fieldValue bean="${applicantInstance}" field="programCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.selectMajorCode}">
				<li class="fieldcontain">
					<span id="selectMajorCode-label" class="property-label"><g:message code="applicant.selectMajorCode.label" default="Select Major Code" /></span>
					
						<span class="property-value" aria-labelledby="selectMajorCode-label"><g:fieldValue bean="${applicantInstance}" field="selectMajorCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.majorDesc}">
				<li class="fieldcontain">
					<span id="majorDesc-label" class="property-label"><g:message code="applicant.majorDesc.label" default="Major Desc" /></span>
					
						<span class="property-value" aria-labelledby="majorDesc-label"><g:fieldValue bean="${applicantInstance}" field="majorDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.international}">
				<li class="fieldcontain">
					<span id="international-label" class="property-label"><g:message code="applicant.international.label" default="International" /></span>
					
						<span class="property-value" aria-labelledby="international-label"><g:fieldValue bean="${applicantInstance}" field="international"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${applicantInstance?.uscitizen}">
				<li class="fieldcontain">
					<span id="uscitizen-label" class="property-label"><g:message code="applicant.uscitizen.label" default="Uscitizen" /></span>
					
						<span class="property-value" aria-labelledby="uscitizen-label"><g:fieldValue bean="${applicantInstance}" field="uscitizen"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${applicantInstance?.id}" />
					<g:link class="edit" action="edit" id="${applicantInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
