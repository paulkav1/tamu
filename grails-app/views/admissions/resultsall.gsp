<html>
<head>
	<title>Searched All Sugar Records</title>
	<meta name="layout" content="main">
</head>
<body>	
	<g:render template = 'nav'/>
	<h1>Looked for ${params.firstName} ${params.lastName} ${params.phone} ${params.email}</h1>
	<table>
		<thead>
			<tr>
				<g:sortableColumn property="Id" title="${message(code: 'applicant.colloquyId.label', default: '#')}" />
				<g:sortableColumn property="colloquyId" title="${message(code: 'applicant.colloquyId.label', default: 'Colloquy Id')}" />
				<g:sortableColumn property="firstName" title="${message(code: 'applicant.firstName.label', default: 'Name')}" />
				<g:sortableColumn property="Phone" title="${message(code: 'applicant.ssa.label', default: 'Phones')}" />
				<g:sortableColumn property="Email" title="${message(code: 'applicant.ssa.label', default: 'Email')}" />
				<g:sortableColumn property="Program" title="${message(code: 'applicant.ssa.label', default: 'School/Program')}" />
			</tr>
		</thead>
		<tbody>
			<g:each in="${sugar}" status="i" var="sug">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">								
					<td><g:link action="sugar" id="${sug.sid}">Show</g:link> </td>
					<td>${sug.sid}</td>
					<td>${sug.fname} ${sug.lname}</td>
					<td>${sug.home} ${sug.work}</td>
					<td>${sug.email}</td>
					<td>${sug.school} ${sug.program}</td>
				</tr>
			</g:each>
		</tbody>
	</table>	
</body>
</html>