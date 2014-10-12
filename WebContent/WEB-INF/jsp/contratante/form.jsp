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
							<h1>Cadastrar Cliente</h1>
							<ol class="breadcrumb">
								<li><i class="fa fa-dashboard"></i> <a href="<c:url value="/"/>">Home</a>
								</li>
								<li class="active">Cadastrar Cliente</li>
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
											<h4>Cadastrar Cliente</h4>
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
											<form role="form"
												action="<c:url value="/contratante/add"/>"
												method="post">
												<div class="row">
													<div class="col-sm-4">
														<div id="webcam"></div>

														<select id="cameraNames" size="1"
															onChange="changeCamera()"
															style="width: 245px; font-size: 10px; height: 25px;">
														</select> <input type="hidden" id="formfield" name="contratante.foto"></input>
														<input type="hidden" id="tipo" name="contratante.tipo" value="C"></input>

													</div>
													<div class="col-sm-4">
														<img id="image" style="width: 200px; height: 153px;" />
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<button type="button" class="btn btn-small" id="btn2"
															onclick="base64_toimage()">Tirar Foto</button>
													</div>
												</div>

												<div class="row">
													<div class="col-sm-6">
														<label for="exampleInputEmail1">Matricula</label> <input
															class="form-control" id="contratante.matricula"
															maxlength="10" required="Campo matricula"
															name="contratante.matricula" placeholder="Matricula">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<label for="exampleInputEmail1">Nome</label> <input
															class="form-control" id="contratante.nome"
															maxlength="100" required="" name="contratante.nome"
															placeholder="Nome">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<label for="exampleInputEmail1">Nome da Mãe</label> <input
															class="form-control" id="contratante.nomeMae"
															maxlength="100" required="" name="contratante.nomeMae"
															placeholder="Nome da Mãe">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-3">
														<label for="exampleInputPassword1">Data de
															Nascimento</label>
														<div id="sandbox-container">
															<input class="form-control" onkeyup="mascara(this, mdata);" id="dataNascimento"  maxlength="10" name="contratante.dataNasc">
														</div>
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">CPF</label> <input
															class="form-control" id="contratante.cpf" maxlength="12"
															required="" name="contratante.cpf" placeholder="CPF">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Email</label> <input
															type="email" class="form-control" id="contratante.email"
															maxlength="50" required="" name="contratante.email"
															placeholder="Email">
													</div>
												</div>
												<div class="row">
													<label class="col-sm-2 control-label">Sexo</label>
													<div class="col-sm-10">
														<div class="radio">
															<label> <input type="radio"
																name="contratante.sexo" id="contratante.sexo" value="F"
																checked>Feminino
															</label>
														</div>
														<div class="radio">
															<label> <input type="radio"
																name="contratante.sexo" id="contratante.sexo" value="M">Masculino
															</label>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Telefone Fixo</label> <input
															class="form-control" id="contratante.telefone"
															maxlength="8" required=""
															name="contratante.telefone.telCasa" placeholder="Fixo">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Celular</label> <input
															type="text" class="form-control" id="contratante.cel"
															maxlength="9" required="" name="contratante.telefone.cel"
															placeholder="Celular">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">CEP</label> <input
															type="text" class="form-control"
															id="cep" maxlength="9" required=""
															name="contratante.endereco.cep" placeholder="CEP">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-10">
														<label for="exampleInputEmail1">Logradouro</label> <input
															class="form-control" id="rua"
															maxlength="40" required=""
															name="contratante.endereco.logradouro"
															placeholder="Logradouro">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Número</label> <input
															class="form-control" id="numero"
															maxlength="8" required=""
															name="contratante.endereco.numero"
															placeholder="Número">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Complemento</label> <input
															type="text" class="form-control"
															id="complemento" maxlength="20"
															name="contratante.endereco.complemento"
															placeholder="Complemento">
													</div>
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Cidade</label> <input
															class="form-control" id="cidade"
															maxlength="20" required=""
															name="contratante.endereco.cidade" placeholder="Cidade">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<label for="exampleInputEmail1">Bairro</label> <input
															class="form-control" id="bairro"
															maxlength="20" required=""
															name="contratante.endereco.bairro" placeholder="Bairro">
													</div>
													<div class="col-sm-2">
														<label for="exampleInputEmail1">UF</label> <input
															type="text" class="form-control"
															id="uf" maxlength="2" required=""
															name="contratante.endereco.uf" placeholder="UF">
													</div>
												</div>
												<div class="row">
													<div class="col-sm-11">
														<div class="col-sm-4">
															<label for="exampleInputEmail1">Plano</label> <select
																name="contratante.plano.nomePlano" id="nomePlano">
																<option value="Familiar">Plano Familiar</option>
																<option value="Intermediário">Plano Intermediário</option>
																<option value="Indívidual">Plano Indívidual</option>
															</select> <label for="exampleInputEmail1">Valor</label> <input
																type="text" class="form-control"
																id="contratante.plano.valor" maxlength="5"
																name="contratante.plano.valor" placeholder="Valor">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-sm-4">
														<button type="button" class="btn btn-small" id="addDep">Add
															Dependente</button>
													</div>
												</div>
												<div id="divDependenteadd"></div>
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
