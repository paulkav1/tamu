<html>
<head>
	<title>CRM Record</title>
	<meta name="layout" content="main">
</head>
<body>
	<g:render template = 'nav'/>
	<h1>CRM Record</h1>
	<ol class="property-list applicant">

	<li class="fieldcontain">
		<span id="studentId-label" class="property-label"><g:message code="applicant.studentId.label" default="Student" /></span>
		<span class="property-value" aria-labelledby="studentId-label">${fname} ${lname}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="status-label" class="property-label"><g:message code="applicant.studentId.label" default="Status" /></span>
		<span class="property-value" aria-labelledby="status-label">${status}</span>		
	</li>	
	
	<li class="fieldcontain">
		<span id="program-label" class="property-label"><g:message code="applicant.studentId.label" default="School/Program" /></span>
		<span class="property-value" aria-labelledby="program-label">${school} ${program} ${award}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="hotnote-label" class="property-label"><g:message code="applicant.studentId.label" default="Hot Note" /></span>
		<span class="property-value" aria-labelledby="hotnote-label">${hotnote}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="city-label" class="property-label"><g:message code="applicant.studentId.label" default="City/State" /></span>
		<span class="property-value" aria-labelledby="city-label">${city} ${state}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="phone-label" class="property-label"><g:message code="applicant.studentId.label" default="Phone" /></span>
		<span class="property-value" aria-labelledby="phone-label">h: ${home} m: ${mobile} w: ${work}</span>		
	</li>
		
	<li class="fieldcontain">
		<span id="advisor-label" class="property-label"><g:message code="applicant.studentId.label" default="Advisor" /></span>
		<span class="property-value" aria-labelledby="advisor-label">${ufname} ${ulname}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="start-label" class="property-label"><g:message code="applicant.studentId.label" default="Lead Date/Source" /></span>
		<span class="property-value" aria-labelledby="start-label"><g:formatDate format="MM-dd-yyyy" date="${start}" /> ${source}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="source-label" class="property-label"><g:message code="applicant.studentId.label" default="# Contacts" /></span>
		<span class="property-value" aria-labelledby="source-label">${contacts}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="term-label" class="property-label"><g:message code="applicant.studentId.label" default="Term Interested" /></span>
		<span class="property-value" aria-labelledby="term-label">${term}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="prof-label" class="property-label"><g:message code="applicant.studentId.label" default="Profile Date" /></span>
		<span class="property-value" aria-labelledby="prof-label"><g:formatDate format="MM-dd-yyyy" date="${profdate}" /></span>		
	</li>
	
	<li class="fieldcontain">
		<span id="user-label" class="property-label"><g:message code="applicant.studentId.label" default="Username" /></span>
		<span class="property-value" aria-labelledby="user-label">${user}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="sac-label" class="property-label"><g:message code="applicant.studentId.label" default="SAC Link" /></span>
		<span class="property-value" aria-labelledby="user-label">http://www.onlineeducationctr.com/apply/Home.aspx?${sugar}</span>		
	</li>
		
	<li class="fieldcontain">
		<span id="start-label" class="property-label"><g:message code="applicant.studentId.label" default="LDA" /></span>
		<span class="property-value" aria-labelledby="start-label"><g:formatDate format="MM-dd-yyyy" date="${lda}" /></span>		
	</li>
	
	</ol>
</body>
</html>