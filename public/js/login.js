function showErrorMessage(div, msg){
     $('#'+div).html("<div class='alert alert-danger'>");
	 $('#'+div+' > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
	      .append("</button>");
	 $('#'+div+' > .alert-danger').append('<strong>'+msg+'</strong>');
	 $('#'+div+' > .alert-danger').append('</div>'); 
}

function hideError(div){
  $('#'+div).html('');	
}

$(function(){
	
	$('#form-login').submit(function(e){
            
       e.preventDefault();
       var email = $("input#email").val();
       var password = $("input#password").val();
	   
	   $.ajax({
		  url: base_url+'/login/login',
		  type: 'post',
		  data: {email: email, password: password},
		  dataType: 'json',
		  success: function(result){

	        if(result.status == 'authorized'){
	    		window.location = base_url+'/dashboard';	
	        } else {
	           showErrorMessage('error', 'Usuário não autorizado!');	
	        }
	        
		  },
		  error: function(){
		    alert('Erro ao se contectar com o servidor.');
		  }
	   });
            
    });

	$("#email, #password").focus(function() {
	 	hideError('error');
	});

});