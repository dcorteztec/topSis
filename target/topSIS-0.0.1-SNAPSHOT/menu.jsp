<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar-side" role="navigation">
	<div class="navbar-collapse sidebar-collapse collapse">
		<ul id="side" class="nav navbar-nav side-nav">
			<!-- begin SIDE NAV USER PANEL -->
			<li class="side-user hidden-xs"><img class="img-circle"
				src="/topSIS/img/logo.png" alt="previsao">
				<p class="name tooltip-sidebar-logout">TopSIS</p>
				<p class="welcome">TopSIS - Sistema de Gerencia de Clinica Médica</p>

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
					<i class="fa fa-edit"></i> Área Solicitação <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="collapse nav in" id="forms">
					<!--                             <li> -->
					<%--                                 <a class="active" href="<c:url value="/areasolicitacao/form"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> Cadastrar Área -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<li><a href="<c:url value="/areasolicitacao/list/all"/>">
							<i class="fa fa-angle-double-right"></i> List Área
					</a></li>
					<!--                             <li> -->
					<%--                                 <a href="<c:url value="/areasolicitacao/mail"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> Enviar Email -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="wysiwyg-editor.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> WYSIWYG Editor -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="dropzone-uploader.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> Dropzone Uploader -->
					<!--                                 </a> -->
					<!--                             </li> -->
				</ul></li>
			<!-- end FORMS DROPDOWN -->
			<li class="panel"><a href="javascript:;" data-parent="#side"
				data-toggle="collapse" class="accordion-toggle" data-target="#rel">
					<i class="fa fa-bar-chart-o"></i> Relatórios <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="collapse nav" id="rel">
					<li><a class="active"
						href="<c:url value="/report/controleLanc"/>"> <i
							class="fa fa-angle-double-right"></i> Relatórios
					</a></li>
					<!--                             <li> -->
					<%--                                 <a href="<c:url value="/areasolicitacao/list/all"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> List Área -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<%--                                 <a href="<c:url value="/areasolicitacao/mail"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> Enviar Email -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="wysiwyg-editor.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> WYSIWYG Editor -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="dropzone-uploader.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> Dropzone Uploader -->
					<!--                                 </a> -->
					<!--                             </li> -->
				</ul></li>
			<li class="panel"><a href="javascript:;" data-parent="#side"
				data-toggle="collapse" class="accordion-toggle" data-target="#rel1">
					<i class="fa fa-bar-chart-o"></i> Lançamentos <i
					class="fa fa-caret-down"></i>
			</a>
				<ul class="collapse nav" id="rel1">
					<li><a class="active"
						href="<c:url value="/lancamentomes/lancamentoTable"/>"> <i
							class="fa fa-angle-double-right"></i> Lançamentos
					</a></li>
					<!--                             <li> -->
					<%--                                 <a href="<c:url value="/areasolicitacao/list/all"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> List Área -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<%--                                 <a href="<c:url value="/areasolicitacao/mail"/>"> --%>
					<!--                                     <i class="fa fa-angle-double-right"></i> Enviar Email -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="wysiwyg-editor.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> WYSIWYG Editor -->
					<!--                                 </a> -->
					<!--                             </li> -->
					<!--                             <li> -->
					<!--                                 <a href="dropzone-uploader.html"> -->
					<!--                                     <i class="fa fa-angle-double-right"></i> Dropzone Uploader -->
					<!--                                 </a> -->
					<!--                             </li> -->
				</ul></li>
		</ul>
		<!-- /.side-nav -->
	</div>
	<!-- /.navbar-collapse -->
</nav>