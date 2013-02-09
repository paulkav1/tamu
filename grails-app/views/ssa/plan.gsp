<html>
<head>
	<title>Degree Plan & Courses Completed</title>
	<meta name="layout" content="main">
</head>
<body>	
	<g:render template = 'nav'/>
	<h1>${fname} ${lname} studying ${program} ${award} at ${school} </h1>
	<div>
	<ol class="property-list applicant">
	
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
		<span id="user-label" class="property-label"><g:message code="applicant.studentId.label" default="Username" /></span>
		<span class="property-value" aria-labelledby="user-label">${user}</span>		
	</li>
	
	<li class="fieldcontain">
		<span id="start-label" class="property-label"><g:message code="applicant.studentId.label" default="LDA" /></span>
		<span class="property-value" aria-labelledby="start-label"><g:formatDate format="MM-dd-yyyy" date="${lda}" /></span>		
	</li>
	
	<li class="fieldcontain">
		<span id="ssa-label" class="property-label"><g:message code="applicant.studentId.label" default="SSA" /></span>
		<span class="property-value" aria-labelledby="ssa-label">${ssa}</span>		
	</li>
		
	</ol>
	</div>
	<div class="split">
		<h4>Degree Plan</h4>		
		<g:each in="${plan}" var="p">
			<p><span class="tag">${p.key} ${p.value.description} ${p.value.elective}</span></p>
		</g:each>
	</div>
	<div class="split">	
		<h4>Courses Completed</h4>
		<g:each in="${transcript}">
			<p><span class="tag">${it.key} ${it.value}</span></p>
		</g:each>
	</div>	
</body>
</html>