//= require rails_admin/themes/material/ui.js

$(document).on('rails_admin.dom_ready', function(){ 


$('#user_subject_ids_field').hide();
$('#user_school_id_field').hide();

// Todos los checkboxs vacíos!
$('#user_holsense_role,#user_utp_role,#user_subject_role').attr('checked',false);


$('#user_holsense_role').on('change', function () {
	if (this.checked) {
		$('#user_utp_role,#user_subject_role').attr('disabled', true);
    }
    else{
    	$('#user_utp_role,#user_subject_role').attr('disabled', false);
    }
    
});

$('#user_utp_role').on('change', function () {
	if (this.checked) {
		$('#user_holsense_role,#user_subject_role').attr('disabled', true);
		$('#user_school_id_field').show();
		$('#user_subject_ids_field').hide();
    }
    else{
    	$('#user_holsense_role,#user_subject_role').attr('disabled', false);
    	$('#user_subject_ids_field').hide();
		$('#user_school_id_field').hide();
    }
});

$('#user_subject_role').on('change', function () {
	if (this.checked) {
        $('#user_utp_role,#user_holsense_role').attr('disabled', true);
        $('#user_subject_ids_field').show();
        $('#user_school_id_field').hide();
    }
    else{
    	$('#user_utp_role,#user_holsense_role').attr('disabled', false);
    	$('#user_subject_ids_field').hide();
		$('#user_school_id_field').hide();
    }
});

$('[name=_save]').on('click',function(event){
	var profesor = $('#user_subject_role');
	var coordinador = $('#user_utp_role');
	var largo_texto = $('[type=search]').val().length;
	if(coordinador.is(':checked') && largo_texto==0){
		alert("Te falta rellenar con el colegio");
		event.preventDefault();
	}
	var lista_asignaturas = $('[class=form-control ra-multiselect-selection]').length;
	alert(lista_asignaturas);

});


});