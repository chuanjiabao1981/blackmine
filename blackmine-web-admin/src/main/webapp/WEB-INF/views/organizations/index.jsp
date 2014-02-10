<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../shared/_message.jsp" %>
<%@ include file="../shared/_label.jsp" %>

<!-- widget grid -->
<section id="widget-grid" class="">

	<!-- row -->
	<div class="row">

		<!-- NEW WIDGET START -->
		<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

			<!-- Widget ID (each widget will need unique ID)-->
			<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false">

				<header>
					<span class="widget-icon"> <i class="fa fa-table"></i> </span>
					<h2>Normal Table</h2>

				</header>

				<!-- widget div-->
				<div>

					<!-- widget edit box -->
					<div class="jarviswidget-editbox">
						<!-- This area used as dropdown edit box -->

					</div>
					<!-- end widget edit box -->

					<!-- widget content -->
					<div class="widget-body">
						<p>
							Adds borders to any table row within <code>
								&lt;table&gt;</code>
							by adding the <code>
								.table-bordered</code>
							with the base class
						</p>
						<c:if test="${not empty organizations}"> 
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>${labelOrganizationName}</th>
									<th>${labelOrganizationDes}</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${organizations}" var="organization">
									<tr>
										<td>${organization.name}</td>
										<td>${organization.desc}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						</c:if>
						

					</div>
					<!-- end widget content -->

				</div>
				<!-- end widget div -->

			</div>
			<!-- end widget -->				
		</article>
		<!-- WIDGET END -->

	</div>

	<!-- end row -->

</section>
<!-- end widget grid -->
