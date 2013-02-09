
<%@ page import="org.colloquy.Enrollment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-enrollment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list enrollment">
			
				<g:if test="${enrollmentInstance?.enrollmentId}">
				<li class="fieldcontain">
					<span id="enrollmentId-label" class="property-label"><g:message code="enrollment.enrollmentId.label" default="Enrollment Id" /></span>
					
						<span class="property-value" aria-labelledby="enrollmentId-label"><g:fieldValue bean="${enrollmentInstance}" field="enrollmentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="enrollment.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${enrollmentInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="enrollment.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${enrollmentInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="enrollment.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${enrollmentInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.courseId}">
				<li class="fieldcontain">
					<span id="courseId-label" class="property-label"><g:message code="enrollment.courseId.label" default="Course Id" /></span>
					
						<span class="property-value" aria-labelledby="courseId-label"><g:fieldValue bean="${enrollmentInstance}" field="courseId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.sectionId}">
				<li class="fieldcontain">
					<span id="sectionId-label" class="property-label"><g:message code="enrollment.sectionId.label" default="Section Id" /></span>
					
						<span class="property-value" aria-labelledby="sectionId-label"><g:fieldValue bean="${enrollmentInstance}" field="sectionId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.courseTitle}">
				<li class="fieldcontain">
					<span id="courseTitle-label" class="property-label"><g:message code="enrollment.courseTitle.label" default="Course Title" /></span>
					
						<span class="property-value" aria-labelledby="courseTitle-label"><g:fieldValue bean="${enrollmentInstance}" field="courseTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="enrollment.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${enrollmentInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="enrollment.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${enrollmentInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="enrollment.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${enrollmentInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.program}">
				<li class="fieldcontain">
					<span id="program-label" class="property-label"><g:message code="enrollment.program.label" default="Program" /></span>
					
						<span class="property-value" aria-labelledby="program-label"><g:fieldValue bean="${enrollmentInstance}" field="program"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.selectMajorCode}">
				<li class="fieldcontain">
					<span id="selectMajorCode-label" class="property-label"><g:message code="enrollment.selectMajorCode.label" default="Select Major Code" /></span>
					
						<span class="property-value" aria-labelledby="selectMajorCode-label"><g:fieldValue bean="${enrollmentInstance}" field="selectMajorCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.majorDesc}">
				<li class="fieldcontain">
					<span id="majorDesc-label" class="property-label"><g:message code="enrollment.majorDesc.label" default="Major Desc" /></span>
					
						<span class="property-value" aria-labelledby="majorDesc-label"><g:fieldValue bean="${enrollmentInstance}" field="majorDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.credithours}">
				<li class="fieldcontain">
					<span id="credithours-label" class="property-label"><g:message code="enrollment.credithours.label" default="Credithours" /></span>
					
						<span class="property-value" aria-labelledby="credithours-label"><g:fieldValue bean="${enrollmentInstance}" field="credithours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.registrationStatus}">
				<li class="fieldcontain">
					<span id="registrationStatus-label" class="property-label"><g:message code="enrollment.registrationStatus.label" default="Registration Status" /></span>
					
						<span class="property-value" aria-labelledby="registrationStatus-label"><g:fieldValue bean="${enrollmentInstance}" field="registrationStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.registrationDesc}">
				<li class="fieldcontain">
					<span id="registrationDesc-label" class="property-label"><g:message code="enrollment.registrationDesc.label" default="Registration Desc" /></span>
					
						<span class="property-value" aria-labelledby="registrationDesc-label"><g:fieldValue bean="${enrollmentInstance}" field="registrationDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${enrollmentInstance?.registrationDate}">
				<li class="fieldcontain">
					<span id="registrationDate-label" class="property-label"><g:message code="enrollment.registrationDate.label" default="Registration Date" /></span>
					
						<span class="property-value" aria-labelledby="registrationDate-label"><g:formatDate date="${enrollmentInstance?.registrationDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${enrollmentInstance?.id}" />
					<g:link class="edit" action="edit" id="${enrollmentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
