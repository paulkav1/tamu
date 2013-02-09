
<%@ page import="org.colloquy.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="student.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${studentInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="student.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${studentInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="student.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${studentInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.addressLine1}">
				<li class="fieldcontain">
					<span id="addressLine1-label" class="property-label"><g:message code="student.addressLine1.label" default="Address Line1" /></span>
					
						<span class="property-value" aria-labelledby="addressLine1-label"><g:fieldValue bean="${studentInstance}" field="addressLine1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.addressLine2}">
				<li class="fieldcontain">
					<span id="addressLine2-label" class="property-label"><g:message code="student.addressLine2.label" default="Address Line2" /></span>
					
						<span class="property-value" aria-labelledby="addressLine2-label"><g:fieldValue bean="${studentInstance}" field="addressLine2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.addressLine3}">
				<li class="fieldcontain">
					<span id="addressLine3-label" class="property-label"><g:message code="student.addressLine3.label" default="Address Line3" /></span>
					
						<span class="property-value" aria-labelledby="addressLine3-label"><g:fieldValue bean="${studentInstance}" field="addressLine3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="student.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${studentInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="student.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${studentInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="student.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${studentInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.countryCode}">
				<li class="fieldcontain">
					<span id="countryCode-label" class="property-label"><g:message code="student.countryCode.label" default="Country Code" /></span>
					
						<span class="property-value" aria-labelledby="countryCode-label"><g:fieldValue bean="${studentInstance}" field="countryCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.homePhone}">
				<li class="fieldcontain">
					<span id="homePhone-label" class="property-label"><g:message code="student.homePhone.label" default="Home Phone" /></span>
					
						<span class="property-value" aria-labelledby="homePhone-label"><g:fieldValue bean="${studentInstance}" field="homePhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.cellPhone}">
				<li class="fieldcontain">
					<span id="cellPhone-label" class="property-label"><g:message code="student.cellPhone.label" default="Cell Phone" /></span>
					
						<span class="property-value" aria-labelledby="cellPhone-label"><g:fieldValue bean="${studentInstance}" field="cellPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.email1}">
				<li class="fieldcontain">
					<span id="email1-label" class="property-label"><g:message code="student.email1.label" default="Email1" /></span>
					
						<span class="property-value" aria-labelledby="email1-label"><g:fieldValue bean="${studentInstance}" field="email1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.email2}">
				<li class="fieldcontain">
					<span id="email2-label" class="property-label"><g:message code="student.email2.label" default="Email2" /></span>
					
						<span class="property-value" aria-labelledby="email2-label"><g:fieldValue bean="${studentInstance}" field="email2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.expectedStartDate}">
				<li class="fieldcontain">
					<span id="expectedStartDate-label" class="property-label"><g:message code="student.expectedStartDate.label" default="Expected Start Date" /></span>
					
						<span class="property-value" aria-labelledby="expectedStartDate-label"><g:formatDate date="${studentInstance?.expectedStartDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.collegeCode}">
				<li class="fieldcontain">
					<span id="collegeCode-label" class="property-label"><g:message code="student.collegeCode.label" default="College Code" /></span>
					
						<span class="property-value" aria-labelledby="collegeCode-label"><g:fieldValue bean="${studentInstance}" field="collegeCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.collegeDesc}">
				<li class="fieldcontain">
					<span id="collegeDesc-label" class="property-label"><g:message code="student.collegeDesc.label" default="College Desc" /></span>
					
						<span class="property-value" aria-labelledby="collegeDesc-label"><g:fieldValue bean="${studentInstance}" field="collegeDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.degreeCode}">
				<li class="fieldcontain">
					<span id="degreeCode-label" class="property-label"><g:message code="student.degreeCode.label" default="Degree Code" /></span>
					
						<span class="property-value" aria-labelledby="degreeCode-label"><g:fieldValue bean="${studentInstance}" field="degreeCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.degreeDesc}">
				<li class="fieldcontain">
					<span id="degreeDesc-label" class="property-label"><g:message code="student.degreeDesc.label" default="Degree Desc" /></span>
					
						<span class="property-value" aria-labelledby="degreeDesc-label"><g:fieldValue bean="${studentInstance}" field="degreeDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.selectMajorCode}">
				<li class="fieldcontain">
					<span id="selectMajorCode-label" class="property-label"><g:message code="student.selectMajorCode.label" default="Select Major Code" /></span>
					
						<span class="property-value" aria-labelledby="selectMajorCode-label"><g:fieldValue bean="${studentInstance}" field="selectMajorCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.majorDesc}">
				<li class="fieldcontain">
					<span id="majorDesc-label" class="property-label"><g:message code="student.majorDesc.label" default="Major Desc" /></span>
					
						<span class="property-value" aria-labelledby="majorDesc-label"><g:fieldValue bean="${studentInstance}" field="majorDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.acadstatus}">
				<li class="fieldcontain">
					<span id="acadstatus-label" class="property-label"><g:message code="student.acadstatus.label" default="Acadstatus" /></span>
					
						<span class="property-value" aria-labelledby="acadstatus-label"><g:fieldValue bean="${studentInstance}" field="acadstatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.acadStatDesc}">
				<li class="fieldcontain">
					<span id="acadStatDesc-label" class="property-label"><g:message code="student.acadStatDesc.label" default="Acad Stat Desc" /></span>
					
						<span class="property-value" aria-labelledby="acadStatDesc-label"><g:fieldValue bean="${studentInstance}" field="acadStatDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.expgraddate}">
				<li class="fieldcontain">
					<span id="expgraddate-label" class="property-label"><g:message code="student.expgraddate.label" default="Expgraddate" /></span>
					
						<span class="property-value" aria-labelledby="expgraddate-label"><g:fieldValue bean="${studentInstance}" field="expgraddate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.graduated}">
				<li class="fieldcontain">
					<span id="graduated-label" class="property-label"><g:message code="student.graduated.label" default="Graduated" /></span>
					
						<span class="property-value" aria-labelledby="graduated-label"><g:fieldValue bean="${studentInstance}" field="graduated"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.gradDate}">
				<li class="fieldcontain">
					<span id="gradDate-label" class="property-label"><g:message code="student.gradDate.label" default="Grad Date" /></span>
					
						<span class="property-value" aria-labelledby="gradDate-label"><g:formatDate date="${studentInstance?.gradDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${studentInstance?.id}" />
					<g:link class="edit" action="edit" id="${studentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
