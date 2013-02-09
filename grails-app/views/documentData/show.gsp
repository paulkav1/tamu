
<%@ page import="org.colloquy.DocumentData" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documentData.label', default: 'DocumentData')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-documentData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-documentData" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list documentData">
			
				<g:if test="${documentDataInstance?.docId}">
				<li class="fieldcontain">
					<span id="docId-label" class="property-label"><g:message code="documentData.docId.label" default="Doc Id" /></span>
					
						<span class="property-value" aria-labelledby="docId-label"><g:fieldValue bean="${documentDataInstance}" field="docId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="documentData.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${documentDataInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.missingDoc}">
				<li class="fieldcontain">
					<span id="missingDoc-label" class="property-label"><g:message code="documentData.missingDoc.label" default="Missing Doc" /></span>
					
						<span class="property-value" aria-labelledby="missingDoc-label"><g:fieldValue bean="${documentDataInstance}" field="missingDoc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.receivedDoc}">
				<li class="fieldcontain">
					<span id="receivedDoc-label" class="property-label"><g:message code="documentData.receivedDoc.label" default="Received Doc" /></span>
					
						<span class="property-value" aria-labelledby="receivedDoc-label"><g:fieldValue bean="${documentDataInstance}" field="receivedDoc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="documentData.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${documentDataInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="documentData.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${documentDataInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.prefix}">
				<li class="fieldcontain">
					<span id="prefix-label" class="property-label"><g:message code="documentData.prefix.label" default="Prefix" /></span>
					
						<span class="property-value" aria-labelledby="prefix-label"><g:fieldValue bean="${documentDataInstance}" field="prefix"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.termCode}">
				<li class="fieldcontain">
					<span id="termCode-label" class="property-label"><g:message code="documentData.termCode.label" default="Term Code" /></span>
					
						<span class="property-value" aria-labelledby="termCode-label"><g:fieldValue bean="${documentDataInstance}" field="termCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.termDesc}">
				<li class="fieldcontain">
					<span id="termDesc-label" class="property-label"><g:message code="documentData.termDesc.label" default="Term Desc" /></span>
					
						<span class="property-value" aria-labelledby="termDesc-label"><g:fieldValue bean="${documentDataInstance}" field="termDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.applicationNumber}">
				<li class="fieldcontain">
					<span id="applicationNumber-label" class="property-label"><g:message code="documentData.applicationNumber.label" default="Application Number" /></span>
					
						<span class="property-value" aria-labelledby="applicationNumber-label"><g:fieldValue bean="${documentDataInstance}" field="applicationNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.degreeCode}">
				<li class="fieldcontain">
					<span id="degreeCode-label" class="property-label"><g:message code="documentData.degreeCode.label" default="Degree Code" /></span>
					
						<span class="property-value" aria-labelledby="degreeCode-label"><g:fieldValue bean="${documentDataInstance}" field="degreeCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.degreeDesc}">
				<li class="fieldcontain">
					<span id="degreeDesc-label" class="property-label"><g:message code="documentData.degreeDesc.label" default="Degree Desc" /></span>
					
						<span class="property-value" aria-labelledby="degreeDesc-label"><g:fieldValue bean="${documentDataInstance}" field="degreeDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.selectMajorCode}">
				<li class="fieldcontain">
					<span id="selectMajorCode-label" class="property-label"><g:message code="documentData.selectMajorCode.label" default="Select Major Code" /></span>
					
						<span class="property-value" aria-labelledby="selectMajorCode-label"><g:fieldValue bean="${documentDataInstance}" field="selectMajorCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.majorDesc}">
				<li class="fieldcontain">
					<span id="majorDesc-label" class="property-label"><g:message code="documentData.majorDesc.label" default="Major Desc" /></span>
					
						<span class="property-value" aria-labelledby="majorDesc-label"><g:fieldValue bean="${documentDataInstance}" field="majorDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.levelCode}">
				<li class="fieldcontain">
					<span id="levelCode-label" class="property-label"><g:message code="documentData.levelCode.label" default="Level Code" /></span>
					
						<span class="property-value" aria-labelledby="levelCode-label"><g:fieldValue bean="${documentDataInstance}" field="levelCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.levelDesc}">
				<li class="fieldcontain">
					<span id="levelDesc-label" class="property-label"><g:message code="documentData.levelDesc.label" default="Level Desc" /></span>
					
						<span class="property-value" aria-labelledby="levelDesc-label"><g:fieldValue bean="${documentDataInstance}" field="levelDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.missingDocDesc}">
				<li class="fieldcontain">
					<span id="missingDocDesc-label" class="property-label"><g:message code="documentData.missingDocDesc.label" default="Missing Doc Desc" /></span>
					
						<span class="property-value" aria-labelledby="missingDocDesc-label"><g:fieldValue bean="${documentDataInstance}" field="missingDocDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.missingComment}">
				<li class="fieldcontain">
					<span id="missingComment-label" class="property-label"><g:message code="documentData.missingComment.label" default="Missing Comment" /></span>
					
						<span class="property-value" aria-labelledby="missingComment-label"><g:fieldValue bean="${documentDataInstance}" field="missingComment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.receivedDocDesc}">
				<li class="fieldcontain">
					<span id="receivedDocDesc-label" class="property-label"><g:message code="documentData.receivedDocDesc.label" default="Received Doc Desc" /></span>
					
						<span class="property-value" aria-labelledby="receivedDocDesc-label"><g:fieldValue bean="${documentDataInstance}" field="receivedDocDesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.receivedComment}">
				<li class="fieldcontain">
					<span id="receivedComment-label" class="property-label"><g:message code="documentData.receivedComment.label" default="Received Comment" /></span>
					
						<span class="property-value" aria-labelledby="receivedComment-label"><g:fieldValue bean="${documentDataInstance}" field="receivedComment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.documentReceiveDate}">
				<li class="fieldcontain">
					<span id="documentReceiveDate-label" class="property-label"><g:message code="documentData.documentReceiveDate.label" default="Document Receive Date" /></span>
					
						<span class="property-value" aria-labelledby="documentReceiveDate-label"><g:fieldValue bean="${documentDataInstance}" field="documentReceiveDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.personalEmail}">
				<li class="fieldcontain">
					<span id="personalEmail-label" class="property-label"><g:message code="documentData.personalEmail.label" default="Personal Email" /></span>
					
						<span class="property-value" aria-labelledby="personalEmail-label"><g:fieldValue bean="${documentDataInstance}" field="personalEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.homePhoneArea}">
				<li class="fieldcontain">
					<span id="homePhoneArea-label" class="property-label"><g:message code="documentData.homePhoneArea.label" default="Home Phone Area" /></span>
					
						<span class="property-value" aria-labelledby="homePhoneArea-label"><g:fieldValue bean="${documentDataInstance}" field="homePhoneArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentDataInstance?.homePhoneNo}">
				<li class="fieldcontain">
					<span id="homePhoneNo-label" class="property-label"><g:message code="documentData.homePhoneNo.label" default="Home Phone No" /></span>
					
						<span class="property-value" aria-labelledby="homePhoneNo-label"><g:fieldValue bean="${documentDataInstance}" field="homePhoneNo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${documentDataInstance?.id}" />
					<g:link class="edit" action="edit" id="${documentDataInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
