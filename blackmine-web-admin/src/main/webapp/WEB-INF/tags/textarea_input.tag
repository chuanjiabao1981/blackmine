<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@attribute name="path" 	  required="true" type="java.lang.String"%>
<%@attribute name="labelName" required="true" type="java.lang.String"%>
<section>
	<spring:bind path="${path}">
		<label class="label" for="${path}">${labelName}</label>
		<label class="textarea ${status.error ? 'state-error' : '' }">
			<form:textarea path="${path}" rows="4" class="custom-scroll"/>
		</label>
		<c:if test="${status.error}">
		 		<div class="note note-error">${status.errorMessage}</div>
        </c:if>
	</spring:bind>
</section>