$(window).load(function() {
	if(window.location.pathname == "/topSIS/contratante/form"){
					$("#webcam").scriptcam({
						path : '/topSIS/js/enterprise/',
						showMicrophoneErrors : false,
						onError : onError,
						cornerRadius : 20,
						cornerColor : 'e3e5e2',
						onWebcamReady : onWebcamReady,
						appID : 'BB6EA93A-66',
					// onPictureAsBase64:base64_tofield_and_image
					});
					$('#clienteTable').dataTable();
					$("#addDep")
							.click(
									function() {;
										$("#divDependente")
												.append(
														" <div class='row' id='dependentes'> "
																+ " <div class='col-sm-8'>"
																+ " <label for='exampleInputEmail1'>Dependente</label> "
																+ " <input "
																+ " class='form-control' maxlength='20'"
																+ " name='contratante.dependente[]' placeholder='Dependente' required=''> "
																+ " </div> "
																+ " <div class='col-sm-4'> "
																+ " <label for='exampleInputEmail1'>Nasc</label> "
																+ " <input "
																+ " type='text' class='form-control' "
																+ "  name='contratante.dataNascimento[]' onkeyup='mascara(this, mdata);'  "
																+ "maxlength='10' placeholder='Data Nascimento' required=''> "
																+ " </div> "
																+ " </div>");
									});

	}
				});

function base64_tofield() {
	$('#formfield').val($.scriptcam.getFrameAsBase64());
};
function base64_toimage() {
	$('#image').attr("src",
			"data:image/png;base64," + $.scriptcam.getFrameAsBase64());
	base64_tofield();
};
function base64_tofield_and_image(b64) {
	$('#formfield').val(b64);
	$('#image').attr("src", "data:image/png;base64," + b64);
};
function changeCamera() {
	$.scriptcam.changeCamera($('#cameraNames').val());
}
function onError(errorId, errorMsg) {
	$("#btn1").attr("disabled", true);
	$("#btn2").attr("disabled", true);
	alert(errorMsg);
}
function onWebcamReady(cameraNames, camera, microphoneNames, microphone, volume) {
	$.each(cameraNames, function(index, text) {
		$('#cameraNames').append($('<option></option>').val(index).html(text));
	});
	$('#cameraNames').val(camera);
}
