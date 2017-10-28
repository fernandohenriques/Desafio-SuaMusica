function printNew(){
	
	$.ajax({
		url: base_url+'/new/show/'+$("#new-id").html(),
		dataType: 'json',
		success: function (result) {
			if(result.length != 0){
					
				$("#list-new").append('<div class="col-md-10" id="new"></div>');
					$('#new').append('<h3>'+result[0].title+' <small>por '+result[0].author+'</small></h3>');
					$('#new').append('<hr>');
					$('#new').append('<p align="justify">'+result[0].content+'</p>');
			}
		}
	});
}

$(function(){ 
	
	printNew();
	$("#link-admin").attr("href", base_url+'/dashboard');
	$("#link-home").attr("href", base_url);		
});