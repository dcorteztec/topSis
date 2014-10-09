$(function() {
	$('.datepicker').datepicker();
	$('#clienteTable').dataTable();
});
function mascara(o, f) {
	v_obj = o;
	v_fun = f;
	setTimeout("execmascara()", 1);
}
function execmascara() {
	v_obj.value = v_fun(v_obj.value);
}
function mdata(v) {
	v = v.replace(/\D/g, ""); // Remove tudo o que não é dígito
	v = v.replace(/(\d{2})(\d)/, "$1/$2");
	v = v.replace(/(\d{2})(\d)/, "$1/$2");

	v = v.replace(/(\d{2})(\d{2})$/, "$1$2");
	return v;
}