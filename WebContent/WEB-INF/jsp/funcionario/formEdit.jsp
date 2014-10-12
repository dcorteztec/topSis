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

				<!-- begin PAGE TITLE ROW -->
				<div class="row">
					<div class="col-lg-12">
						<div class="page-title">
							<h1>Cadastrar Funcionario</h1>
							<ol class="breadcrumb">
								<li><i class="fa fa-dashboard"></i> <a
									href="<c:url value="/"/>">Home</a></li>
								<li class="active">Cadastrar Funcionario</li>
							</ol>
						</div>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<!-- end PAGE TITLE ROW -->

				<!-- begin MAIN PAGE ROW -->
				<div class="row">

					<!-- begin LEFT COLUMN -->
					<div class="col-lg-10 block_center">

						<div class="row">

							<!-- Basic Form Example -->
							<div class="col-lg-12">

								<div class="portlet portlet-default">
									<div class="portlet-heading">
										<div class="portlet-title">
											<h4>Cadastrar Funcionario</h4>
										</div>
										<h3>${errorMsg}</h3>
										<div class="portlet-widgets">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#basicFormExample"><i class="fa fa-chevron-down"></i></a>
										</div>
										<div class="clearfix"></div>
									</div>
									<%-- 									${erroLogin} --%>
									<div id="basicFormExample" class="panel-collapse collapse in">
										<div class="portlet-body">
											<form role="form" action="<c:url value="/funcionario/add"/>"
												method="post">
                                                <input type="hidden" id="tipo" name="funcionario.tipo" value="F"></input>
												<div class="row">
													<div class="col-sm-6">
														<label for="exampleInputEmail1">Matricula</label> <input
															class="form-control" id="funcionario.matricula"
															maxlength="10" required="Campo matricula"
															name="funcionario.matricula" placeholder="Matricula" value="${funcionario.matricula}">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<label for="exampleInputEmail1">Nome</label> <input
															class="form-control" id="funcionario.nome"
															maxlength="100" required="" name="funcionario.nome"
															placeholder="Nome" value="${funcionario.nome}">
													</div>
												</div>
												<div class="row">
													<label class="col-sm-2 control-label">Função</label>
													<div class="col-sm-10">
														<div class="radio">
															<label class="checkbox-inline"> <input
																type="radio" value="1" id="adm" name="funcionario.roles" 
																<c:if test="${funcionario.roles eq 1}">checked="checked"</c:if>/>Administrador
															</label>
														</div>
														<div class="radio">
															<label class="checkbox-inline"> <input
																type="radio" name="funcionario.roles" id="usr" value="0" 
																<c:if test="${funcionario.roles eq 0}">checked="checked"</c:if>/>Usuário
															</label>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Login</label> <input
															class="form-control" required="" id="funcionario.login"
															maxlength="12" name="funcionario.login" placeholder="Login" value="${funcionario.login}">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Senha</label> <input
															type="password" class="form-control"
															id="funcionario.senha" maxlength="50"
															name="funcionario.senha" equired="" placeholder="Senha" value="${funcionario.senha}">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-3">
														<label for="exampleInputPassword1">Data de
															Nascimento</label>
														<div id="sandbox-container">
															<input class="form-control"
																onkeyup="mascara(this, mdata);" id="dataNascimento"
																maxlength="10" name="funcionario.dataNasc" value="${funcionario.dataNasc}">
														</div>
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">CPF</label> <input
															class="form-control" id="funcionario.cpf" maxlength="12"
															name="funcionario.cpf" placeholder="CPF" value="${funcionario.cpf}">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Email</label> <input
															type="email" class="form-control" id="funcionario.email"
															maxlength="50" name="funcionario.email"
															placeholder="Email" value="${funcionario.email}">
													</div>
												</div>
												<div class="row">
													<label class="col-sm-2 control-label">Sexo</label>
													<div class="col-sm-10">
														<div class="radio">
															<label> <input type="radio"
																name="funcionario.sexo" id="funcionario.sexo" value="F"
																<c:if test="${funcionario.sexo eq 'F'}">checked="checked"</c:if>/>Feminino
															</label>
														</div>
														<div class="radio">
															<label> <input type="radio"
																name="funcionario.sexo" id="funcionario.sexo" value="M"
																<c:if test="${funcionario.sexo eq 'M'}">checked="checked"</c:if>/>Masculino
															</label>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Telefone Fixo</label> <input
															class="form-control" id="funcionario.telefone"
															maxlength="8" required=""
															name="funcionario.telefone.telCasa" placeholder="Fixo" value="${funcionario.telefone.telCasa}">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Celular</label> <input
															type="text" class="form-control" id="funcionario.cel"
															maxlength="9" required="" name="funcionario.telefone.cel"
															placeholder="Celular" value="${funcionario.telefone.cel}">
													</div>
												</div>
													<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">CEP</label> <input
															type="text" class="form-control" id="cep" maxlength="9"
															name="funcionario.endereco.cep" placeholder="CEP" value="${funcionario.endereco.cep}">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-10">
														<label for="exampleInputEmail1">Logradouro</label> <input
															class="form-control" id="rua"
															maxlength="40" name="funcionario.endereco.logradouro"
															placeholder="Logradouro" value="${funcionario.endereco.logradouro}">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Número</label> <input
															class="form-control" id="numero"
															maxlength="8" name="funcionario.endereco.numero"
															placeholder="Número" value="${funcionario.endereco.numero}">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Complemento</label> <input
															type="text" class="form-control"
															id="complemento" maxlength="20"
															name="funcionario.endereco.complemento"
															placeholder="Complemento" value="${funcionario.endereco.complemento}">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Cidade</label> <input
															class="form-control" id="cidade"
															maxlength="20" name="funcionario.endereco.cidade"
															placeholder="Cidade" value="${funcionario.endereco.cidade}">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Bairro</label> <input
															class="form-control" id="bairro"
															maxlength="20" 
															name="funcionario.endereco.bairro" placeholder="Bairro"
															value="${funcionario.endereco.bairro}">
													</div>
													<div class="col-sm-2">
														<label for="exampleInputEmail1">UF</label> <input
															type="text" class="form-control"
															id="uf" maxlength="2" 
															name="funcionario.endereco.uf" placeholder="UF"
															value="${funcionario.endereco.uf}">
													</div>
												</div>

												<button type="submit" class="btn btn-default">Enviar</button>

											</form>
										</div>
									</div>
								</div>
								<!-- /.portlet -->
							</div>
							<!-- /.col-lg-12 (nested) -->
							<!-- End Basic Form Example -->




						</div>
						<!-- /.row (nested) -->

					</div>
					<!-- /.col-lg-6 -->
					<!-- end LEFT COLUMN -->

				</div>
				<!-- /.row -->
				<!-- end MAIN PAGE ROW -->

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
