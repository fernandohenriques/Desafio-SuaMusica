base_url = 'http://localhost/Desafio-SuaMusica';

function showMessage(div, type, msg){
     $('#'+div).html("<div class='alert alert-"+type+"'>");
	 $('#'+div+' > .alert-'+type).html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
	      .append("</button>");
	 $('#'+div+' > .alert-'+type).append('<strong>'+msg+'</strong>');
	 $('#'+div+' > .alert-'+type).append('</div>');
}
