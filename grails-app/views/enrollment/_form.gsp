<%@ page import="org.colloquy.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'enrollmentId', 'error')} required">
	<label for="enrollmentId">
		<g:message code="enrollment.enrollmentId.label" default="Enrollment Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="enrollmentId" required="" value="${enrollmentInstance?.enrollmentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'studentId', 'error')} required">
	<label for="studentId">
		<g:message code="enrollment.studentId.label" default="Student Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="studentId" required="" value="${enrollmentInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="enrollment.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${enrollmentInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'lastname', 'error')} ">
	<label for="lastname">
		<g:message code="enrollment.lastname.label" default="Lastname" />
		
	</label>
	<g:textField name="lastname" value="${enrollmentInstance?.lastname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'courseId', 'error')} ">
	<label for="courseId">
		<g:message code="enrollment.courseId.label" default="Course Id" />
		
	</label>
	<g:textField name="courseId" value="${enrollmentInstance?.courseId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'sectionId', 'error')} ">
	<label for="sectionId">
		<g:message code="enrollment.sectionId.label" default="Section Id" />
		
	</label>
	<g:textField name="sectionId" value="${enrollmentInstance?.sectionId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'courseTitle', 'error')} ">
	<label for="courseTitle">
		<g:message code="enrollment.courseTitle.label" default="Course Title" />
		
	</label>
	<g:textField name="courseTitle" value="${enrollmentInstance?.courseTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'startDate', 'error')} ">
	<label for="startDate">
		<g:message code="enrollment.startDate.label" default="Start Date" />
		
	</label>
	<g:datePicker name="startDate" precision="day"  value="${enrollmentInstance?.startDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="enrollment.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${enrollmentInstance?.endDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="enrollment.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${enrollmentInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'program', 'error')} ">
	<label for="program">
		<g:message code="enrollment.program.label" default="Program" />
		
	</label>
	<g:textField name="program" value="${enrollmentInstance?.program}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'selectMajorCode', 'error')} ">
	<label for="selectMajorCode">
		<g:message code="enrollment.selectMajorCode.label" default="Select Major Code" />
		
	</label>
	<g:textField name="selectMajorCode" value="${enrollmentInstance?.selectMajorCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'majorDesc', 'error')} ">
	<label for="majorDesc">
		<g:message code="enrollment.majorDesc.label" default="Major Desc" />
		
	</label>
	<g:textField name="majorDesc" value="${enrollmentInstance?.majorDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'credithours', 'error')} ">
	<label for="credithours">
		<g:message code="enrollment.credithours.label" default="Credithours" />
		
	</label>
	<g:textField name="credithours" value="${enrollmentInstance?.credithours}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'registrationStatus', 'error')} ">
	<label for="registrationStatus">
		<g:message code="enrollment.registrationStatus.label" default="Registration Status" />
		
	</label>
	<g:textField name="registrationStatus" value="${enrollmentInstance?.registrationStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'registrationDesc', 'error')} ">
	<label for="registrationDesc">
		<g:message code="enrollment.registrationDesc.label" default="Registration Desc" />
		
	</label>
	<g:textField name="registrationDesc" value="${enrollmentInstance?.registrationDesc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'registrationDate', 'error')} ">
	<label for="registrationDate">
		<g:message code="enrollment.registrationDate.label" default="Registration Date" />
		
	</label>
	<g:datePicker name="registrationDate" precision="day"  value="${enrollmentInstance?.registrationDate}" default="none" noSelection="['': '']" />
</div>

