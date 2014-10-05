<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<jsp:include page="/head.jsp"></jsp:include>
</head>

<body>

	<div id="wrapper">

		<!-- begin TOP NAVIGATION -->
		<jsp:include page="/top.jsp"></jsp:include>
		<!-- /.navbar-top -->
		<!-- end TOP NAVIGATION -->

		<!-- begin SIDE NAVIGATION -->
		<jsp:include page="/menu.jsp"></jsp:include>
		<!-- /.navbar-side -->
		<!-- end SIDE NAVIGATION -->

		<!-- begin MAIN PAGE CONTENT -->
		<div id="page-wrapper">

			<div class="page-content">

				<!-- begin PAGE TITLE AREA -->
				<!-- Use this section for each page's title and breadcrumb layout. In this example a date range picker is included within the breadcrumb. -->
				<div class="row">
					<div class="col-lg-12">
						<div class="page-title">
							<h1>Home</h1>
							<ol class="breadcrumb">
								<li class="active"><i class="fa fa-dashboard"></i> Home</li>
                 
							</ol>
							
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<!-- end PAGE TITLE AREA -->
				 <h3>${errorMsg}</h3>  
                 <img class="img-circle"
				src="/topSIS/img/topClim.jpg" alt="previsao">
				<!-- begin DASHBOARD CIRCLE TILES -->
			</div>
			<!-- /.page-content -->

		</div>

		<!-- /#page-wrapper -->
		<!-- end MAIN PAGE CONTENT -->
	</div>
	<!-- /#wrapper -->

	<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>