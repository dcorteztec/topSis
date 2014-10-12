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
								Listar Funcionarios
							</h1>
							<ol class="breadcrumb">
								<li><i class="fa fa-dashboard"></i> <a href="index.html">Home</a>
								</li>
								<li class="active">Listar Funcionarios</li>
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
									<h4>Listar Funcionarios</h4>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="portlet-body">
								<div class="table-responsive">
									<table id="clienteTable"
										class="table table-striped table-bordered table-hover table-green">
										<thead>
											<tr>
												<th>Matrícula</th>
												<th>Nome</th>
												<th>Telefones</th>
												<th>Função</th>
												<th>Editar</th>
												<th>HAB/Desabilitar</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="func" items="${funcionario}" varStatus="loopStatus">
											<tr class="odd gradeX">
												<td>${func.matricula}</td>
												<td>${func.nome}</td>
												<td>${func.telefone.telCasa} - ${func.telefone.cel}</td>
												<c:if test="${func.roles eq 1}">
												<td>Administrador</td>
												</c:if>
												<c:if test="${func.roles eq 0}">
												<td>Funcionário</td>
												</c:if>
												<td class="center"><a href="/topSIS/funcionario/formEdit/${func.matricula}" class="btn btn-blue" data-toggle="modal">Edit</a></td>
												<c:if test="${func.indHabilitado eq false}">
												<td class="center"><a href="/topSIS/funcionario/desabilitar/${func.matricula}" class="btn btn-blue" data-toggle="modal" onclick="return confirm('Deseja DESABILITAR esse Funcionario ?');">Del</a></td>
												</c:if>
												<c:if test="${func.indHabilitado eq true}">
												<td class="center"><a href="/topSIS/funcionario/habilitar/${func.matricula}" class="btn btn-blue" data-toggle="modal" onclick="return confirm('Deseja HABILITAR esse Funcionario ?');">Add</a></td>
												</c:if>
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
