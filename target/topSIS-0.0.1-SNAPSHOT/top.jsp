<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar-top" role="navigation">

	<!-- begin BRAND HEADING -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle pull-right"
			data-toggle="collapse" data-target=".sidebar-collapse">
			<i class="fa fa-bars"></i> Menu
		</button>

	</div>
	<!-- end BRAND HEADING -->

	<div class="nav-top">
		<!-- begin LEFT SIDE WIDGETS -->
		<ul class="nav navbar-left">
			<li class="tooltip-sidebar-toggle"><a href="#"
				id="sidebar-toggle" data-toggle="tooltip" data-placement="right"
				title="Expandir Tela"> <i class="fa fa-bars"></i>
			</a></li>
			<!-- You may add more widgets here using <li> -->
		</ul>
		<!-- end LEFT SIDE WIDGETS -->

		<!-- begin MESSAGES/ALERTS/TASKS/USER ACTIONS DROPDOWNS -->
		<ul class="nav navbar-right">
			<li class="dropdown"><a href="#"
				class="messages-link dropdown-toggle" data-toggle="dropdown"> <i
					class="fa fa-envelope"></i>
			</a>
				<ul class="dropdown-menu dropdown-scroll dropdown-messages">

					<!-- Messages Dropdown Heading -->
					<li class="dropdown-header"><i class="fa fa-envelope">Enviar
							Email</i></li>

					<!-- Messages Dropdown Body - This is contained within a SlimScroll fixed height box. You can change the height using the SlimScroll jQuery features. -->

					<ul class="list-unstyled">

						<!-- begin LEFT COLUMN -->
						<div class="col-lg-12">



							<!-- Basic Form Example -->
<!-- 							<div class="col-lg-12"> -->
<!-- 								<div id="basicFormExample"> -->
<!-- 									<form class="formBasic" role="form" -->
<%-- 										action="<c:url value="/sendMail"/>" method="post"> --%>
<!-- 										<div class="form-group"> -->
<!-- 											<div class="col-sm-12"> -->
<!-- 												<select class="form-control" -->
<!-- 													name="areaSolicitacao.atendimento"> -->
<!-- 													<option value="mg">Atendimento MG</option> -->
<!-- 													<option value="rj">Atendimento RJ</option> -->
<!-- 												</select> -->
<!-- 											</div> -->
<!-- 											<div class="col-sm-12" style="margin: 5px 0;"> -->
<!-- 												<select class="form-control" -->
<!-- 													name="areaSolicitacao.codAreaSolicitacao"> -->
<%-- 													<c:forEach var="areaS" items="${perfil.areaSolicList}"> --%>
<%-- 														<option value="${areaS.codAreaSolicitacao}">${areaS.nomeArea}</option> --%>
<%-- 													</c:forEach> --%>
<!-- 												</select> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="form-group" style="margin: 5px 0;"> -->
<!-- 											<div class="col-sm-12"> -->
<!-- 												<textarea class="form-control" id="textArea" -->
<!-- 													name="areaSolicitacao.msg" placeholder="Mensagem"></textarea> -->
<!-- 											</div> -->
<!-- 										</div> -->

<!-- 										<button type="submit" class="btn btn-default formBasicSubmit">Enviar</button> -->

<!-- 									</form> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<!-- /.col-lg-12 (nested) -->
							<!-- End Basic Form Example -->






						</div>
						<!-- /.col-lg-6 -->
						<!-- end LEFT COLUMN -->


					</ul>


					<!-- Messages Dropdown Footer -->
					<li class="dropdown-footer"></li>

				</ul> <!-- /.dropdown-menu --></li>
			<!-- begin TASKS DROPDOWN -->
			<li class="dropdown"><a href="#"
				class="tasks-link dropdown-toggle" data-toggle=dropdown> <i
					class="fa fa-tasks"></i> <!--                             <span class=number></span><i class="fa fa-caret-down"></i> -->
			</a>
				<ul class="dropdown-menu dropdown-scroll dropdown-tasks">

<!-- 					Tasks Dropdown Footer -->
<!-- 					<li class="dropdown-footer"><a href="#" id="popList">Listar -->
<!-- 							Clientes</a></li> -->

				</ul> <!-- /.dropdown-menu --></li>


			<!-- /.dropdown -->
			<!-- end TASKS DROPDOWN -->

			<!-- begin USER ACTIONS DROPDOWN -->
<!-- 			<li class="dropdown"><a href="#" class="dropdown-toggle" -->
<!-- 				data-toggle="dropdown"> <i class="fa fa-user"></i> <i -->
<!-- 					class="fa fa-caret-down"></i> -->
<!-- 			</a> -->
<!-- 				<ul class="dropdown-menu dropdown-user"> -->
<%-- 					<c:if test="${perfil.usuarios.usuarioWeb eq 1}"> --%>
<%-- 						<li><a href="<c:url value="/usuario/form"/>" id="cadUsr"> --%>
<!-- 								<i class="fa fa-user"></i> Cadastrar Usuário -->
<!-- 						</a></li> -->
<%-- 						<li><a href="<c:url value="/usuario/list"/>" id="listUsr"> --%>
<!-- 								<i class="fa fa-user"></i> Listar Usuário -->
<!-- 						</a></li> -->
<%-- 					</c:if> --%>
<%-- 					<c:if test="${perfil.usuarios.usuarioWeb eq 0}"> --%>
<!-- 						<li><a href="#" id="altSenh"> <i class="fa fa-user"></i> -->
<!-- 								Alterar Senha -->
<!-- 						</a></li> -->
<%-- 					</c:if> --%>
<!-- 					<li class="divider"></li> -->
<!-- 					<li><a class="logout_open" href="#logout"> <i -->
<%-- 							class="fa fa-sign-out"></i> Logout <strong>${perfil.usuarios.nome}</strong> --%>
<!-- 					</a></li> -->
<!-- 				</ul> /.dropdown-menu</li> -->
			<!-- /.dropdown -->
			<!-- end USER ACTIONS DROPDOWN -->

		</ul>
		<!-- /.nav -->
		<!-- end MESSAGES/ALERTS/TASKS/USER ACTIONS DROPDOWNS -->

	</div>
	<!-- /.nav-top -->
</nav>