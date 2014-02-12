<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="../views/shared/_message.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!--<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">-->

		<title> ${messageTitle} </title>
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Use the correct meta names below for your web application
			 Ref: http://davidbcalhoun.com/2010/viewport-metatag 
			 
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">-->
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/font-awesome.min.css">

		<!-- SmartAdmin Styles : Please note (smartadmin-production.css) was created using LESS variables -->
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-production.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-skins.css">

		<!-- SmartAdmin RTL Support is under construction
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/smartadmin-rtl.css"> -->

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		specific styles this will also ensure you retrain your customization
		with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/demo.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/demo.css">

		<!-- FAVICONS -->
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="${pageContext.request.contextPath}/img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

	</head>
	<body>
	    <%@include file="_body_header.jsp" %>
	
		 <%@include file="_body_left_panel.jsp" %>

		<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> <span id="refresh" class="btn btn-ribbon" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true"><i class="fa fa-refresh"></i></span> </span>

				<!-- breadcrumb -->
				<ol class="breadcrumb">
					<li>
						Tables
					</li>
					<li>
						Data Tables
					</li>
				</ol>
				<!-- end breadcrumb -->

				<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->

			</div>
			<!-- END RIBBON -->

			<!-- MAIN CONTENT -->
			<div id="content">
				<div class="alert alert-success fade in">
						<button class="close" data-dismiss="alert">
						×
						</button>
						<i class="fa-fw fa fa-bullhorn"></i>
						<strong>${messageTestBanner}</strong> 
				</div>				
				<%@include file="_body_breadcrumbs.jsp" %>
				
				<tiles:insertAttribute name="body"/>
				
			</div>
			<!-- END MAIN CONTENT -->

		</div>
		<!-- END MAIN PANEL -->

		<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
		
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="${pageContext.request.contextPath}/js/plugin/pace/pace.min.js"></script>

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="${pageContext.request.contextPath}/js/libs/jquery-2.0.2.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="${pageContext.request.contextPath}/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events
		<script src="${pageContext.request.contextPath}/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->
		<script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>

		<!-- CUSTOM NOTIFICATION -->
		<script src="${pageContext.request.contextPath}/js/notification/SmartNotification.min.js"></script>

		<!-- JARVIS WIDGETS -->
		<!-- script src="${pageContext.request.contextPath}/js/smartwidgets/jarvis.widget.min.js"></script-->

		<!-- EASY PIE CHARTS -->
		<script src="${pageContext.request.contextPath}/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>

		<!-- SPARKLINES -->
		<script src="${pageContext.request.contextPath}/js/plugin/sparkline/jquery.sparkline.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="${pageContext.request.contextPath}/js/plugin/jquery-validate/jquery.validate.min.js"></script>

		<!-- JQUERY MASKED INPUT -->
		<script src="${pageContext.request.contextPath}/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

		<!-- JQUERY SELECT2 INPUT -->
		<script src="${pageContext.request.contextPath}/js/plugin/select2/select2.min.js"></script>

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="${pageContext.request.contextPath}/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="${pageContext.request.contextPath}/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- SmartClick: For mobile devices -->
		<script src="${pageContext.request.contextPath}/js/plugin/smartclick/smartclick.js"></script>

		<!--[if IE 7]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

		<!-- Demo purpose only -->
		<script src="${pageContext.request.contextPath}/js/demo.js"></script>

		<!-- MAIN APP JS FILE -->
		<script src="${pageContext.request.contextPath}/js/app.js"></script>

		<!-- PAGE RELATED PLUGIN(S) -->
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/jquery.dataTables-cust.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/ColReorder.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/FixedColumns.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/ColVis.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/ZeroClipboard.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/media/js/TableTools.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/plugin/datatables/DT_bootstrap.js"></script>
		

		<script type="text/javascript">
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		$(document).ready(function() {
			pageSetUp();
		})

		</script>

	</body>

</html>