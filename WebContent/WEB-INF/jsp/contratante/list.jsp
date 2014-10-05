<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
				<div class="row">
					<div class="col-lg-12">
						<div class="page-title">
							<h1>
								Listar Clientes
							</h1>
							<ol class="breadcrumb">
								<li><i class="fa fa-dashboard"></i> <a href="index.html">Home</a>
								</li>
								<li class="active">Listar Clientes</li>
							</ol>
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- begin PAGE TITLE ROW -->
				<div class="row">
					<div class="col-lg-12">

						<div class="portlet portlet-default">
							<div class="portlet-heading">
								<div class="portlet-title">
									<h4>Listar Clientes</h4>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="portlet-body">
								<div class="table-responsive">
									<table id="clienteTable"
										class="table table-striped table-bordered table-hover table-green">
										<thead>
											<tr>
												<th>Nome</th>
												<th>Cpf</th>
												<th>CRO/CRM</th>
												<th>CEI</th>
												<th>Continuar</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="cli" items="${perfil.clientes}" varStatus="loopStatus">
											<tr class="odd gradeX">
												<td>${cli.nome}</td>
												<td>${cli.cpfcnpj}</td>
												<td>${cli.cei}</td>
												<td>${cli.crocrm}</td>
												<td class="center"><a href="<c:url value="/cliente/chosen/${cli.codCliente}"/>" class="btn btn-blue" >Cont</a></td>
											</tr>
										</c:forEach>	
										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.portlet-body -->
						</div>
						<!-- /.portlet -->

					</div>

				</div>
				<!-- /.row -->
				<!-- end MAIN PAGE ROW -->

			</div>
			<!-- /.page-content -->

		</div>
	</div>
	<!-- /#wrapper -->

	<jsp:include page="/footer.jsp"></jsp:include>

</body>
  
</html>
