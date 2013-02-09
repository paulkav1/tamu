<html>
<head>
	<title>Search All Applicants</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>
	<formset>
	<h1>Search All Applicants</h1>
		
	<g:form action="resultsall">
		<label for="email">Email</label>
		<g:textField name="email" />
		<label for="firstName">First Name</label>
		<g:textField name="firstName" />
		<label for="lastName">Last Name</label>
		<g:textField name="lastName" />
		<label for="phone">Phone</label>
		<g:textField name="phone" />
		<label for="school">School</label>
		<g:textField name="school" />
		<label for="program">Program</label>
		<g:textField name="phone" />
		<g:submitButton name="search" value="Search"/>
	</g:form>
	
	</formset>
	
</body>
</html>