<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="../shared/_message.jsp" %>
<%@ include file="../shared/_label.jsp" %>

<spring:url value="/login" var="loginUrl"/>



<form action="${loginUrl}" id="login-form" method="post" class="smart-form client-form">
	<header>
	${messageSignIn}
	</header>
	
	<c:if test="${not empty message}">
		<div id="message" class="${message.type}">${message.message}</div>
	</c:if>
	

	<fieldset>
		<section>
			<label class="label">${labelUserName}</label>
			<label class="input"> <i class="icon-append fa fa-user"></i>
				<input type="text" name="username">
				<b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> ${messageInputUserNameTip} </b></label>
		</section>
		<section>
			<label class="label">${labelPassword}</label>
			<label class="input"> <i class="icon-append fa fa-lock"></i>
				<input type="password" name="password">
				<b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> ${messageInputPasswordTip} </b> </label>
			<div class="note">
				<a href="javascript:void(0)">${messageForgetPassword}</a>
			</div>
		</section>
		<section>
			<label class="checkbox">
				<input type="checkbox" name="remember" checked="checked">
				<i></i>${messageStaySignIn}</label>
		</section>
	</fieldset>
	<footer>
		<button type="submit" class="btn btn-primary">
				${messageSignIn}
		</button>
	</footer>
</form>