<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@include file="../shared/_message.jsp" %>
<%@include file="../shared/_label.jsp" %>

<section id="widget-grid" class="">
	<div class="row">
		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget" id="wid-id-0">
				<header>
					<h2><strong>Default</strong> <i>Widget</i></h2>				
				</header>
				<!-- widget div-->
				<div>
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
						<input class="form-control" type="text">
						<span class="note"><i class="fa fa-check text-success"></i> Change title to update and save instantly!</span>
					</div>
					<!-- end widget edit box -->
									
					<!-- widget content -->
					<div class="widget-body">
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
									<div class="row">
										<t:text_input		path="lat"	 labelName="${labelOrganizationName}" sectionCss="col col-6"/>
										<t:text_input		path="lng"	 labelName="${labelOrganizationName}" sectionCss="col col-6"/>
									</div>
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
					<!-- end widget content -->
				</div>
			</div>
		</article>	
				<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget" id="wid-id-1">
				<header>
					<h2><strong>Default</strong> <i>Widget</i></h2>				
				</header>
				<!-- widget div-->
				<div>
					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->
						<input class="form-control" type="text">
						<span class="note"><i class="fa fa-check text-success"></i> Change title to update and save instantly!</span>
					</div>
					<!-- end widget edit box -->
									
					<!-- widget content -->
					<div class="widget-body no-padding">
						<div id="mapContainer" style="height:365px">
						</div>
						<script type="text/javascript"> 
								var map = new BMap.Map("mapContainer");           
								var point = new BMap.Point(116.404, 39.915);    
								map.centerAndZoom(point, 15); 
						</script>
					</div>
					<!-- end widget content -->
				</div>
			</div>
		</article>
		
	</div>
	
</section>
