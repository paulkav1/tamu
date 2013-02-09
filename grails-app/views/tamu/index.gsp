<html>
<head>
	<title>TAMUC</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>	
	<formset>	
	<g:form action="index">
	<h1>Search TAMUC Files</h1>
	<label for="studentId">Student ID(TAMU)</label>
		<g:textField name="studentId" />
		<g:submitButton name="search" value="Search by Id"/>
	</g:form>
	
	<g:form action="index">
		<label for="lastName">Last Name</label>
		<g:textField name="lastName" />
		<g:submitButton name="search" value="Search by Name"/>
	</g:form>
	</formset>
	
	<g:if test="${applicants?.size() > 0}">
		<h4>Searched ${org?.colloquy?.Applicant?.count()} applicants and ${org?.colloquy?.DocumentData?.count()} documents for <em>${id} ${name}</em></h4>
		<p>Found <strong>${applicants?.size()}</strong> applicants and <strong>${documents?.size()}</strong> documents.</p>
		<ul>
		<g:each var="applicant" in="${applicants}">
			<li><g:link controller='applicant' action="show" id="${applicant.id}">${applicant.lastName}</g:link></li>
		</g:each>
		</ul>
	</g:if>
	
	<g:if test="${students?.size() > 0}">
		<h4>Searched ${org?.colloquy?.Student?.count()} students and ${org?.colloquy?.Enrollment?.count()} enrollments for <em>${id} ${name}</em></h4>
		<p>Found <strong>${students?.size()}</strong> students and <strong>${enrollments?.size()}</strong> enrollments.</p>
		<ul>
		<g:each var="student" in="${students}">
			<li><g:link controller='student' action="show" id="${student.id}">${student.lastname}</g:link></li>
		</g:each>
		</ul>
	</g:if>

</body>
</html>