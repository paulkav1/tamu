<%@ page import="org.colloquy.DocumentData" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documentData.label', default: 'DocumentData')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-documentData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:render template = 'nav'/>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-documentData" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="docId" title="${message(code: 'documentData.docId.label', default: 'Doc Id')}" />							
						<g:sortableColumn property="missingDoc" title="${message(code: 'documentData.missingDoc.label', default: 'Missing')}" />				
						<g:sortableColumn property="receivedDoc" title="${message(code: 'documentData.receivedDoc.label', default: 'Received')}" />				
						<g:sortableColumn property="documentReceiveDate" title="${message(code: 'documentData.receivedDoc.label', default: 'Doc Rcv\'d')}" />	
						<g:sortableColumn property="lastName" title="${message(code: 'documentData.lastName.label', default: 'Name')}" />							
						<g:sortableColumn property="missingComment" title="${message(code: 'documentData.missingComment.label', default: 'Comment')}" />	
						<g:sortableColumn property="selectMajorCode" title="${message(code: 'documentData.selectMajorCode.label', default: 'Major')}" />	
						<g:sortableColumn property="applicationNumber" title="${message(code: 'documentData.applicationNumber.label', default: 'App No.')}" />	
					</tr>
				</thead>
				<tbody>
				<g:each in="${documentDataInstanceList}" status="i" var="documentDataInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${documentDataInstance.id}">${fieldValue(bean: documentDataInstance, field: "docId")}</g:link></td>					
						<td>${fieldValue(bean: documentDataInstance, field: "missingDoc")}</td>		
						<td>${fieldValue(bean: documentDataInstance, field: "receivedDoc")}</td>	
						<td><g:formatDate format="MM-dd-yyyy" date="${documentDataInstance.documentReceiveDate}"/></td>								
						<td>${fieldValue(bean: documentDataInstance, field: "firstName")} ${fieldValue(bean: documentDataInstance, field: "lastName")}</td>						
						<td>${fieldValue(bean: documentDataInstance, field: "missingComment")}</td>	
						<td>${fieldValue(bean: documentDataInstance, field: "selectMajorCode")}</td>	
						<td>${fieldValue(bean: documentDataInstance, field: "applicationNumber")}</td>	
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${documentDataInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
