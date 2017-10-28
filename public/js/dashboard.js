function printNameUser(){
	
	$.get(base_url+'/dashboard/getNameUserLogged', function( data ) {
		$("#nome_usuario").html(data);
	});
 		
}

function printNews(){
	
	$.ajax({
		url: base_url+'/dashboard/listNews/10',
		dataType: 'json',
		success: function (results) {
			if(results.length != 0){
				$("#list-news").html('');
				
				$("#list-news").append("<h4>Últimas Notícias</h4><hr>");
				$("#list-news").append("<table class='table table-striped table-responsive' id='table-news'></table>");
				
				for (var i = 0; i < results.length; i++) {
					
					var object = results[i];
					var content = object.content;
					
					$("#table-news").append("<tr id='line"+i+"'></tr>");
						$("#line"+i).append("<td>"+object.title+"</td>");
						$("#line"+i).append("<td>"+object.author+"</td>");
						$("#line"+i).append("<td>"+content.substr(0,200)+"...</td>");
				}
				
				$("#table-news").prepend("<thead><tr id='trhead'></tr></thead>");
		        	$("#trhead").append("<th>Título</th>");
		            $("#trhead").append("<th>Autor</th>");
		            $("#trhead").append("<th>Notícia</th>");
			}
		}
	});
}

$(function(){ 
	
	//prints
	printNameUser();
	printNews();
	
	$("#link-home").attr("href", base_url);
	
	$("#logout").click(function () {
		
		$.get(base_url+'/login/logout', function( ) {
 			window.location = base_url+'/login/';
 		});
		
	});
	
 	$('#form-save-news').submit(function(e){
          
       e.preventDefault();
       var title = $("input#title").val();
       var author = $("input#author").val();
       var content = $("textarea#content").val();
	   
	   $.ajax({
		  url: base_url+'/dashboard/saveNews',
		  type: 'post',
		  data: {title: title, author: author, content: content},
		  dataType: 'json',
		  success: function(result){

	        if(result.status == 'save'){
	    		showMessage('msg-modal-1', 'success', result.message);
	    		$("#msg-modal-1").show();
	    		$('#form-save-news')[0].reset();
	    		printNews();
	        } else {
	           showMessage('msg-modal-1', 'danger', result.message);
	           $("#msg-modal-1").show();
	        }
	        
		  },
		  error: function(){
		    alert('Erro ao se contectar com o servidor.');
		  }
	   });
            
    });
    
    $('#form-new-user').submit(function(e){
          
       e.preventDefault();
       var name = $("input#name").val();
       var email = $("input#email").val();
       var password = $("input#password").val();
       var active = $("input#active").val();
	   
	   $.ajax({
		  url: base_url+'/signup/register',
		  type: 'post',
		  data: {name: name, email: email, password: password, active: active},
		  dataType: 'json',
		  success: function(result){

	        if(result.status == 'save'){
	    		showMessage('msg-modal-2', 'success', result.message);
	    		$("#msg-modal-2").show();
	    		$('#form-new-user')[0].reset();
	        } else {
	           showMessage('msg-modal-2', 'danger', result.message);
	           $("#msg-modal-2").show();
	        }
	        
		  },
		  error: function(){
		    alert('Erro ao se contectar com o servidor.');
		  }
	   });
            
    });
    
    $("input, #btn-modal-1, #btn-modal-2").focus(function() {
	 	$("#msg-modal-1").hide();
	 	$("#msg-modal-2").hide();
	});
	
});