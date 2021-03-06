<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@attribute name="path" 	  	 required="true" 	type="java.lang.String"%>
<%@attribute name="labelName" 	 required="true" 	type="java.lang.String"%>
<%@attribute name="sectionCss"   required="false" 	type="java.lang.String"%>
<c:if test="${empty sectionCss}">
	<section>
</c:if>
<c:if test="${not empty sectionCss}">
	<section class="${sectionCss}"/>
</c:if>
	<spring:bind path="${path}">
		<label class="label" for="${path}">${labelName}</label>
		<label class="input  ${status.error ? 'state-error' : '' }">
			<form:input path="${path}"/>
		</label>
		 <c:if test="${status.error}">
		 		<div class="note note-error">${status.errorMessage}</div>
        </c:if>
		
	</spring:bind>
</section>