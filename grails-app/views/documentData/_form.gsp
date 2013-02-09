<%@ page import="org.colloquy.DocumentData" %>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'docId', 'error')} required">
	<label for="docId">
		<g:message code="documentData.docId.label" default="Doc Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docId" required="" value="${documentDataInstance?.docId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="documentData.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${documentDataInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'missingDoc', 'error')} ">
	<label for="missingDoc">
		<g:message code="documentData.missingDoc.label" default="Missing Doc" />
		
	</label>
	<g:textField name="missingDoc" value="${documentDataInstance?.missingDoc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'receivedDoc', 'error')} ">
	<label for="receivedDoc">
		<g:message code="documentData.receivedDoc.label" default="Received Doc" />
		
	</label>
	<g:textField name="receivedDoc" value="${documentDataInstance?.receivedDoc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="documentData.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${documentDataInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="documentData.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${documentDataInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'prefix', 'error')} ">
	<label for="prefix">
		<g:message code="documentData.prefix.label" default="Prefix" />
		
	</label>
	<g:textField name="prefix" value="${documentDataInstance?.prefix}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'termCode', 'error')} ">
	<label for="termCode">
		<g:message code="documentData.termCode.label" default="Term Code" />
		
	</label>
	<g:textField name="termCode" value="${documentDataInstance?.termCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'termDesc', 'error')} ">
	<label for="termDesc">
		<g:message code="documentData.termDesc.label" default="Term Desc" />
		
	</label>
	<g:textField name="termDesc" value="${documentDataInstance?.termDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'applicationNumber', 'error')} ">
	<label for="applicationNumber">
		<g:message code="documentData.applicationNumber.label" default="Application Number" />
		
	</label>
	<g:textField name="applicationNumber" value="${documentDataInstance?.applicationNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'degreeCode', 'error')} ">
	<label for="degreeCode">
		<g:message code="documentData.degreeCode.label" default="Degree Code" />
		
	</label>
	<g:textField name="degreeCode" value="${documentDataInstance?.degreeCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'degreeDesc', 'error')} ">
	<label for="degreeDesc">
		<g:message code="documentData.degreeDesc.label" default="Degree Desc" />
		
	</label>
	<g:textField name="degreeDesc" value="${documentDataInstance?.degreeDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'selectMajorCode', 'error')} ">
	<label for="selectMajorCode">
		<g:message code="documentData.selectMajorCode.label" default="Select Major Code" />
		
	</label>
	<g:textField name="selectMajorCode" value="${documentDataInstance?.selectMajorCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'majorDesc', 'error')} ">
	<label for="majorDesc">
		<g:message code="documentData.majorDesc.label" default="Major Desc" />
		
	</label>
	<g:textField name="majorDesc" value="${documentDataInstance?.majorDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'levelCode', 'error')} ">
	<label for="levelCode">
		<g:message code="documentData.levelCode.label" default="Level Code" />
		
	</label>
	<g:textField name="levelCode" value="${documentDataInstance?.levelCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'levelDesc', 'error')} ">
	<label for="levelDesc">
		<g:message code="documentData.levelDesc.label" default="Level Desc" />
		
	</label>
	<g:textField name="levelDesc" value="${documentDataInstance?.levelDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'missingDocDesc', 'error')} ">
	<label for="missingDocDesc">
		<g:message code="documentData.missingDocDesc.label" default="Missing Doc Desc" />
		
	</label>
	<g:textField name="missingDocDesc" value="${documentDataInstance?.missingDocDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'missingComment', 'error')} ">
	<label for="missingComment">
		<g:message code="documentData.missingComment.label" default="Missing Comment" />
		
	</label>
	<g:textField name="missingComment" value="${documentDataInstance?.missingComment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'receivedDocDesc', 'error')} ">
	<label for="receivedDocDesc">
		<g:message code="documentData.receivedDocDesc.label" default="Received Doc Desc" />
		
	</label>
	<g:textField name="receivedDocDesc" value="${documentDataInstance?.receivedDocDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'receivedComment', 'error')} ">
	<label for="receivedComment">
		<g:message code="documentData.receivedComment.label" default="Received Comment" />
		
	</label>
	<g:textField name="receivedComment" value="${documentDataInstance?.receivedComment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'documentReceiveDate', 'error')} ">
	<label for="documentReceiveDate">
		<g:message code="documentData.documentReceiveDate.label" default="Document Receive Date" />
		
	</label>
	<g:textField name="documentReceiveDate" value="${documentDataInstance?.documentReceiveDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'personalEmail', 'error')} ">
	<label for="personalEmail">
		<g:message code="documentData.personalEmail.label" default="Personal Email" />
		
	</label>
	<g:textField name="personalEmail" value="${documentDataInstance?.personalEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'homePhoneArea', 'error')} ">
	<label for="homePhoneArea">
		<g:message code="documentData.homePhoneArea.label" default="Home Phone Area" />
		
	</label>
	<g:textField name="homePhoneArea" value="${documentDataInstance?.homePhoneArea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentDataInstance, field: 'homePhoneNo', 'error')} ">
	<label for="homePhoneNo">
		<g:message code="documentData.homePhoneNo.label" default="Home Phone No" />
		
	</label>
	<g:textField name="homePhoneNo" value="${documentDataInstance?.homePhoneNo}"/>
</div>

