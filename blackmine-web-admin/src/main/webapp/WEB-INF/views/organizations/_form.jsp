<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@include file="../shared/_message.jsp" %>
<%@include file="../shared/_label.jsp" %>
<section id="widget-grid">
	<div class="row">
		<article class="col-sm-12 col-md-12 col-lg-12">
			<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">
				<header>
					<span class="widget-icon"> <i class="fa fa-edit"></i> </span>
					<h2>Form Grid </h2>
				</header>
				<div>
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
				
					</div>
					<!-- end widget edit box -->
					<div class="widget-body no-padding">
						<form:form modelAttribute="organization"  
 		  			   			   id="organization" 
 		  			   			   name="organization" 
 		  			   			   method="post" enctype="multipart/form-data" action="${param.post_url}"
 		  			   			   class="smart-form">
 		  			   		<header>
 		  			   			${messageOrganizationInfo}
							</header>
 							<fieldset>
									<t:text_input 			path="name"  labelName="${labelOrganizationName}" />
									<t:textarea_input		path="desc"	 labelName="${labelOrganizationDesc}" />
							</fieldset>
							<footer>
								<button type="submit" class="btn btn-primary">
													${labelButtonSave}
								</button>
								<button type="button" class="btn btn-default" onclick="window.history.back();">
													${labelButtonBack}
								</button>
								</footer>
						</form:form>
					</div>
				</div>
			</div>
		</article>
	</div>
</section>
