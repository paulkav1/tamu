<html>
<head>
	<title>Admin Utilities</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>	
	<h1>Admin Utilities</h1>
	<formset>
	<g:form action="download">
	<h4>File Information</h4>
	<ul>
	<li>Applicant: ${filedates?.Applicant} <g:submitButton name="appFile" value="Get CSV" /> <g:submitButton name="appFile" value="Tab SV" /></li>
	<li>Document: ${filedates?.Document}<g:submitButton name="docFile" value="Get CSV" /> <g:submitButton name="docFile" value="Tab SV" /></li>
	<li>Student: ${filedates?.Student}<g:submitButton name="stuFile" value="Get CSV" /> <g:submitButton name="stuFile" value="Tab SV" /></li>
	<li>Enrollment: ${filedates?.Enrollment}<g:submitButton name="enrFile" value="Get CSV" /> <g:submitButton name="enrFile" value="Tab SV" /></li>
	</ul>	
	</g:form>
	</formset>
</body>
</html>	