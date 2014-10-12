<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar-side" role="navigation">
	<div class="navbar-collapse sidebar-collapse collapse">
		<ul id="side" class="nav navbar-nav side-nav">
			<!-- begin SIDE NAV USER PANEL -->
			<li class="side-user hidden-xs"><img class="img-circle"
				src="/topSIS/img/logo.png" alt="previsao">
				<p class="name tooltip-sidebar-logout">TopSIS</p>
				<p class="welcome">TopSIS - Sistema de Gerencia de Clinica
					Médica</p>

				<div class="clearfix"></div></li>
			<!-- end SIDE NAV USER PANEL -->
			<!-- begin SIDE NAV SEARCH -->
			<!-- 			<li class="nav-search"> -->
			<!-- 				<form role="form"> -->
			<!-- 					<input type="search" class="form-control" placeholder="Busca..."> -->
			<!-- 					<button class="btn"> -->
			<!-- 						<i class="fa fa-search"></i> -->
			<!-- 					</button> -->
			<!-- 				</form> -->
			<!-- 			</li> -->
			<!-- end SIDE NAV SEARCH -->
			<!-- begin DASHBOARD LINK -->
			<li><a href="<c:url value="/"/>"> <i class="fa fa-dashboard"></i>
					Home
			</a></li>
			<!-- end DASHBOARD LINK -->

			<!-- end CHARTS DROPDOWN -->
			<!-- begin FORMS DROPDOWN -->
			<li class="panel"><a href="javascript:;" data-parent="#side"
				data-toggle="collapse" class="accordion-toggle" data-target="#forms">
					<i class="fa fa-edit"></i> Cliente <i class="fa fa-caret-down"></i>
			</a>
				<ul class="collapse nav in" id="forms">
					<li><a href="<c:url value="/contratante/form"/>"> <i
							class="fa fa-angle-double-right"></i>Cadastrar
					</a></li>
					<li><a href="<c:url value="/contratante/list"/>"> <i
							class="fa fa-angle-double-right"></i>Listar Clientes
					</a></li>
				</ul></li>
			<c:if test="${usuarioComponente.funcionario.roles eq 1}">
				<li class="panel"><a href="javascript:;" data-parent="#side"
					data-toggle="collapse" class="accordion-toggle"
					data-target="#forms"> <i class="fa fa-edit"></i> Funcionário <i
						class="fa fa-caret-down"></i>
				</a>
					<ul class="collapse nav in" id="forms">

						<li><a href="<c:url value="/funcionario/form"/>"> <i
								class="fa fa-angle-double-right"></i>Cadastrar
						</a></li>
						<li><a href="<c:url value="/funcionario/list"/>"> <i
								class="fa fa-angle-double-right"></i>Listar Funcionários
						</a></li>
					</ul></li>
			</c:if>
		</ul>
		<!-- /.side-nav -->
	</div>
	<!-- /.navbar-collapse -->
</nav>