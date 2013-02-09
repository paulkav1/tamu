<html>
<head>
	<title>Email Deleted</title>
	<meta name="layout" content="main">
</head>
<body>
	<h1>Results</h1>
	<p>
	<g:if test="${success}">Deleted <em>${email}</em></g:if>
	<g:else>Email <em>${email}</em> not found</g:else>
	</p>
	
	<g:link action='search'>Search</g:link>
	<g:link action='list'>List</g:link>
	<g:link action='load'>Load</g:link>
	<g:link action='email'>Email</g:link>
	<g:link action='sugar'>Sugar</g:link>
	<g:link action='plan'>Plan</g:link>
</body>
</html>