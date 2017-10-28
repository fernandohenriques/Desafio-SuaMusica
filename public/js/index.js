function printNews(){
	
	$.ajax({
		url: base_url+'/dashboard/listNews',
		dataType: 'json',
		success: function (results) {
			if(results.length != 0){
			
				for (var i = 0; i < results.length; i++) {
					
					var object = results[i];
					var content = object.content;
					
					$("#list-news").append('<div class="col-md-8" id="id'+object.id+'"></div>');
						$('#id'+object.id).append('<h3>'+object.title+'</h3>');
						$('#id'+object.id).append('<h4>'+object.author+'</h4>');
						$('#id'+object.id).append('<p>'+content.substr(0,250)+'...</p>');
						$('#id'+object.id).append('<a class="btn btn-primary show-more" href="'+base_url+'/new/'+object.id+'">Ver Mais</a>');
					
					$('#id'+object.id).append('<hr>');
			
				}
				
			}
		}
	});
}

$(function(){ 
	
	printNews();
	$("#link-admin").attr("href", base_url+'/dashboard'); 
});