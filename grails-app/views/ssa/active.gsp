<html>
<head>
	<title>Active Students</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>
	<div id="list-active" class="content scaffold-list" role="main">	
	<h1>Active Students</h1>
	<table>
		<thead>
			<tr>
				<g:sortableColumn property="colloquyId" title="${message(code: 'applicant.colloquyId.label', default: 'Colloquy Id')}" />
				<g:sortableColumn property="lname" title="${message(code: 'applicant.lastName.label', default: 'Name')}" />
				<g:sortableColumn property="ssa" title="${message(code: 'applicant.ssa.label', default: 'SSA')}" />
				<g:sortableColumn property="program" title="${message(code: 'applicant.ssa.label', default: 'School/Program')}" />
				<g:sortableColumn property="lda" title="${message(code: 'applicant.ssa.label', default: 'LDA')}" />
				</tr>
		</thead>
		<tbody>
			<g:each in="${active}" status="i" var="act">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">								
					<td><g:link action="plan" id="${act.key}">${act.key}</g:link></td>
					<td>${act.value.fname} ${act.value.lname}</td>
					<td>${act.value.ssa}</td>
					<td>${act.value.school} ${act.value.program}</td>
					<td><g:formatDate format="MM-dd-yyyy" date="${act.value.lda}"/></td>
				</tr>
			</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<g:paginate total="${count}" max="15"/>
	</div>
	</div>
</body>
</html>