
<%@ page import="org.colloquy.Enrollment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'enrollment.label', default: 'Enrollment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-enrollment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-enrollment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>				
						<g:sortableColumn property="enrollmentId" title="${message(code: 'enrollment.enrollmentId.label', default: 'Enrollment Id')}" />			
						<g:sortableColumn property="selectMajorCode" title="${message(code: 'enrollment.selectMajorCode.label', default: 'Major')}" />					
						<g:sortableColumn property="lastname" title="${message(code: 'enrollment.lastname.label', default: 'Name')}" />									
						<g:sortableColumn property="registrationStatus" title="${message(code: 'enrollment.registrationStatus.label', default: 'Status')}" />					
						<g:sortableColumn property="registrationDate" title="${message(code: 'enrollment.registrationDate.label', default: 'Status Date')}" />	
						<g:sortableColumn property="sectionId" title="${message(code: 'enrollment.sectionId.label', default: 'Section Id')}" />						
					</tr>
				</thead>
				<tbody>
				<g:each in="${enrollmentInstanceList}" status="i" var="enrollmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td><g:link action="show" id="${enrollmentInstance.id}">${fieldValue(bean: enrollmentInstance, field: "enrollmentId")}</g:link></td>					
						<td>${fieldValue(bean: enrollmentInstance, field: "selectMajorCode")}</td>					
						<td>${fieldValue(bean: enrollmentInstance, field: "firstName")} ${fieldValue(bean: enrollmentInstance, field: "lastname")}</td>									
						<td>${fieldValue(bean: enrollmentInstance, field: "registrationStatus")}</td>					
						<td><g:formatDate format="MM-dd-yyyy" date="${enrollmentInstance.registrationDate}"/></td>		
						<td>${fieldValue(bean: enrollmentInstance, field: "sectionId")}</td>								
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${enrollmentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
