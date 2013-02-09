<html>
<head>
	<title>Sugar Email Maintenance</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>
	<h1>Delete Email Address</h1>
	&nbsp
	<formset>
	<g:form action="emaildone">
		<label for="email">Email to delete</label>
		<g:textField name="email" />
		<g:submitButton name="delete" value="Delete Email"/>
	</g:form>
	
	</formset>
	
</body>
</html>