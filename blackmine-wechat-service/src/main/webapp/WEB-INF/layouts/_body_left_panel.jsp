<%@ include file="../views/shared/_message.jsp" %>
<%@ include file="../views/shared/_label.jsp" %>

		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		<aside id="left-panel">

			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as it --> <img src="${pageContext.request.contextPath}/img/avatars/sunny.png" alt="me" class="online" /> <a href="javascript:void(0);" id="show-shortcut">john.doe <i class="fa fa-angle-down"></i></a> </span>
			</div>
			<!-- end user info -->

			<!-- NAVIGATION : This navigation is also responsive

			To make this navigation dynamic please make sure to link the node
			(the reference to the nav > ul) after page load. Or the navigation
			will not initialize.
			-->
			<nav>
				<!-- NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional hre="" links. See documentation for details.
				-->

				<ul>
					<li>
						<a href="index.html" title="Dashboard"><i class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">${labelMain}</span></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-group"></i> <span class="menu-item-parent">${labelMember}</span></a>
						<ul>
							<li>
								<a href="flot.html">${labelBeMember}</a>
							</li>
							<li>
								<a href="morris.html">${labelMemberPriority}</a>
							</li>
							<li>
								<a href="inline-charts.html">${labelSearch}</a>
							</li>
						</ul>
					</li>
					
					<li>
						<a href="inbox.html"><i class="fa fa-lg fa-fw fa-question"></i> <span class="menu-item-parent">${labelFaq}</span></a>
					</li>
					<li>
						<a href="inbox.html"><i class="fa fa-lg fa-fw fa-envelope-o"></i> <span class="menu-item-parent">${labelContact}</span></a>
					</li>
					
				</ul>
			</nav>
			<span class="minifyme"> <i class="fa fa-arrow-circle-left hit"></i> </span>

		</aside>
		<!-- END NAVIGATION -->