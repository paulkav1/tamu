<%@ page import="org.colloquy.Student" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-student" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>					
						<g:sortableColumn property="studentId" title="${message(code: 'student.studentId.label', default: 'Student Id')}" />				
						<g:sortableColumn property="lastname" title="${message(code: 'student.lastname.label', default: 'Name')}" />							
						<g:sortableColumn property="acadStatDesc" title="${message(code: 'student.acadStatDesc.label', default: 'Academic Status')}" />				
						<g:sortableColumn property="selectMajorCode" title="${message(code: 'student.selectMajorCode.label', default: 'Major')}" />						
						<g:sortableColumn property="expectedStartDate" title="${message(code: 'student.expectedStartDate.label', default: 'Start Date')}" />						
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentInstanceList}" status="i" var="studentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">					
						<td><g:link action="show" id="${studentInstance.id}">${fieldValue(bean: studentInstance, field: "studentId")}</g:link></td>				
						<td>${fieldValue(bean: studentInstance, field: "firstName")} ${fieldValue(bean: studentInstance, field: "lastname")}</td>						
						<td>${fieldValue(bean: studentInstance, field: "acadStatDesc")}</td>				
						<td>${fieldValue(bean: studentInstance, field: "selectMajorCode")}</td>	
						<td><g:formatDate format="MM-dd-yyyy" date="${studentInstance.expectedStartDate}"/></td>	
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentInstanceTotal}" max="25" />
			</div>
		</div>
	</body>
</html>
