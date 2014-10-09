<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/head.jsp"></jsp:include>

</head>

<body class="login">

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-banner text-center">
					<h1 class="login">Previsão contábil</h1>
				</div>
				<div class="portlet portlet-green">
					<div class="portlet-heading login-heading">
						<div class="portlet-title">
							<h4>
								<strong>Bem vindos!</strong>
							</h4>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="portlet-body">
						<form role="form" action="<c:url value="/loged"/>" method="post">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Login" name="login"
										type="text" required="">
										
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name="password" type="password" value="" required="">
									
								</div>
								<br>
								<button type="submit" id="top-right-message-demo"
									class="btn btn-lg btn-blue btn-block">Login</button>
							</fieldset>
							<br>
							<c:if test="${not empty errorMsg1}">
								<div class="col-md-6">
									<div class="alert alert-info alert-dismissable">
										<div class="alert alert-danger alert-dismissable">
											<button type="button" class="close" data-dismiss="alert"
												aria-hidden="true">&times;</button>
											<strong>Erro</strong> ${errorMsg1}

										</div>
									</div>
								</div>
							</c:if>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- GLOBAL SCRIPTS -->
<script src="/previsaocontabil/js/beinfo/jquery.min.js"></script>
<script src="/previsaocontabil/js/beinfo/jquery.maskedinput.js"></script>
<script src="/previsaocontabil/js/plugins/bootstrap/bootstrap.min.js"></script>
<script
	src="/previsaocontabil/js/plugins/bootstrap-duallistbox/jquery.bootstrap-duallistbox.js"></script>
<script
	src="/previsaocontabil/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script
	src="/previsaocontabil/js/plugins/popupoverlay/jquery.popupoverlay.js"></script>
<script src="/previsaocontabil/js/plugins/popupoverlay/defaults.js"></script>
<!-- Logout Notification Box -->

<div id="refreshDeducao"></div>
<!-- BEINFO -->
<script src="/previsaocontabil/js/beinfo/ajaxUtils.js"></script>
<script src="/previsaocontabil/js/beinfo/jquery-ui.js"></script>
<script src="/previsaocontabil/js/beinfo/jquery-picklist.js"></script>
<script src="/previsaocontabil/js/beinfo/jquery.bpopup.min.js"></script>
<script src="/previsaocontabil/js/beinfo/bootstrapWizard.js"></script>
<script src="/previsaocontabil/js/beinfo/pretty.js"></script>
<script src="/previsaocontabil/js/beinfo/jquery.maskMoney.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>

<script src="/previsaocontabil/js/beinfo/gridLanc.js"></script>

<!-- /#logout -->
<!-- Logout Notification jQuery -->
<script src="/previsaocontabil/js/plugins/popupoverlay/logout.js"></script>
<!-- HISRC Retina Images -->
<script src="/previsaocontabil/js/plugins/hisrc/hisrc.js"></script>

<!-- PAGE LEVEL PLUGIN SCRIPTS -->
<!-- HubSpot Messenger -->
<script src="/previsaocontabil/js/plugins/messenger/messenger.min.js"></script>
<script
	src="/previsaocontabil/js/plugins/messenger/messenger-theme-flat.js"></script>
<!-- Date Range Picker -->
<script src="/previsaocontabil/js/plugins/daterangepicker/moment.js"></script>
<script
	src="/previsaocontabil/js/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Morris Charts -->
<script src="/previsaocontabil/js/plugins/morris/raphael-2.1.0.min.js"></script>
<script src="/previsaocontabil/js/plugins/morris/morris.js"></script>
<!-- Flot Charts -->
<script src="/previsaocontabil/js/plugins/flot/jquery.flot.js"></script>
<script src="/previsaocontabil/js/plugins/flot/jquery.flot.resize.js"></script>
<!-- Sparkline Charts -->
<script
	src="/previsaocontabil/js/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- Moment.js -->
<script src="/previsaocontabil/js/plugins/moment/moment.min.js"></script>
<!-- jQuery Vector Map -->
<script
	src="/previsaocontabil/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
	src="/previsaocontabil/js/plugins/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
<script src="/previsaocontabil/js/demo/map-demo-data.js"></script>
<!-- Easy Pie Chart -->
<script
	src="/previsaocontabil/js/plugins/easypiechart/jquery.easypiechart.min.js"></script>
<!-- DataTables -->
<script
	src="/previsaocontabil/js/plugins/datatables/jquery.dataTables.js"></script>
<script src="/previsaocontabil/js/plugins/datatables/datatables-bs3.js"></script>

<!-- THEME SCRIPTS -->
<script src="/previsaocontabil/js/flex.js"></script>
<script src="/previsaocontabil/js/demo/dashboard-demo.js"></script>
<script src="/previsaocontabil/js/demo/advanced-tables-demo.js"></script>
<script src="/previsaocontabil/js/plugins/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<script src="/previsaocontabil/js/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
</body>

</html>
