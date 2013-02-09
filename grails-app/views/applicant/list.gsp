
<%@ page import="org.colloquy.Applicant" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'applicant.label', default: 'Applicant')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-applicant" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-applicant" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>				
						<g:sortableColumn property="studentId" title="${message(code: 'applicant.studentId.label', default: 'Student Id')}" />				
						<g:sortableColumn property="colloquyId" title="${message(code: 'applicant.colloquyId.label', default: 'Colloquy Id')}" />					
						<g:sortableColumn property="lastName" title="${message(code: 'applicant.lastName.label', default: 'Name')}" />												
						<g:sortableColumn property="homePhone" title="${message(code: 'applicant.homePhone.label', default: 'Phones')}" />					
						<g:sortableColumn property="applicationStatus" title="${message(code: 'applicant.applicationStatus.label', default: 'Status')}" />					
						<g:sortableColumn property="programAdmittedDate" title="${message(code: 'applicant.selectMajorCode.label', default: 'Admit Date')}" />	
						<g:sortableColumn property="selectMajorCode" title="${message(code: 'applicant.selectMajorCode.label', default: 'Major')}" />					
						<g:sortableColumn property="termDesc" title="${message(code: 'applicant.termDesc.label', default: 'Term')}" />					
					</tr>
				</thead>
				<tbody>
				<g:each in="${applicantInstanceList}" status="i" var="app">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">				
						<td><g:link action="show" id="${app.id}">${fieldValue(bean: app, field: "studentId")}</g:link></td>				
						<td><g:link action="sugar" id="${app.colloquyId}">${fieldValue(bean: app, field: "colloquyId")}</g:link></td>				
						<td>${fieldValue(bean: app, field: "firstName")} ${fieldValue(bean: app, field: "lastName")}</td>											
						<td>${fieldValue(bean: app, field: "homePhone")} ${fieldValue(bean: app, field: "cellPhone")}</td>				
						<td>${fieldValue(bean: app, field: "applicationStatus")}</td>				
						<td><g:formatDate format="MM-dd-yyyy" date="${app.programAdmittedDate}"/></td>					
						<td>${fieldValue(bean: app, field: "selectMajorCode")}</td>				
						<td>${fieldValue(bean: app, field: "termDesc")}</td>				
						<td><g:link controller='tamu' action="resultsall" params="[id:"${app.id}", search:'Search', lastName:"${app.lastName}", 
						firstName:"${app.firstName}", phone:"", email:"${app.email1}", school:'TAMUC', program:"${app.selectMajorCode}"]">Lead Search</g:link></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${applicantInstanceTotal}" max="25" />
			</div>
		</div>
	</body>
</html>
