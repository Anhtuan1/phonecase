function getContentOrder() {
	var userId = (window.location.search.split('&')[0]).split('=')[1];
	var passwordId = (window.location.search.split('&')[1]).split('=')[1];
	//var url_case = window.location.hostname+'/sroce/iphone/';
	var url_case = 'localhost/sroce/iphone/';
	var background_case = document.getElementById('phone-background').style.background;
	if(background_case==''){
		background_case = '#fff';
	}
	var count_finish = $('.uploadimg').length;
	run_send_form(count_finish);
	$('.uploadimg').each(function(){
		var gettext = this.getAttribute('src');
		var change = this.getAttribute('id');
			$.ajax({
				type: "POST",			
				url: 'upload.php',
				dataType: 'text',
				data: {data: gettext}
			}).done(function(data){
				//console.log(data);
				var nameimg = data.split('&');				
				document.getElementById(change).src = nameimg[0]; 
				$('#'+change).removeClass('uploadimg');
				$('#'+change).addClass(nameimg[1]);
				count_finish--;
				run_send_form(count_finish); 
			}).fail(function(xhr, status, error){
				
			});
	});	
	
		
	function run_send_form(count){
		if(count==0){
			
			var content_case = {		
				'url_case':url_case,
				'userId':userId,
				'widthWindow': window.innerWidth,
				'heightWindow': window.innerHeight,
				'device': device,
				'typecase': typecase,
				'colordevice': colordevice, 
				'imagedevice': $('#template-case img').attr('src'),
				'height':phoneCaseDesign_height,
				'width':phoneCaseDesign_width,
				'zoom': document.getElementById('phone-case-design').clientHeight/phoneCaseDesign_height,
				'content':{
					'background':background_case,
					'element': document.getElementById('phone_content').innerHTML			
				}		
			};
			content_send.push(content_case);
			//console.log(JSON.stringify(content_send));
			 /*  $.ajax({                    
			  url: 'save.php/?aa',     
			  type: 'post', // performing a POST request
			  data : JSON.stringify(content_case),
			  dataType: 'json',                   
			  success: function(data)         
			  {
				$("#headersp").append(data);
			  }  
			});  */  
			
			
			
			
			$.ajax({
					type: "POST",
					dataType: 'json',
					url: 'save.php',
//					contentType: "application/x-www-form-urlencoded;charset=ISO-65001",
					data: {data:JSON.stringify(content_send),user:userId}
//					data: {data: content_send, user:userId}
				}).done(function(data){
					console.log(data);
					window.location.replace('http://phonecase.miyatsu.vn/iphone/view.php');
				}).fail(function(xhr, status, error){
					
				}); 
			setTimeout(function () {
				window.location.replace('http://phonecase.miyatsu.vn/iphone/view.php');
			});
			
		}else{
			console.log(count);
		}
		
	}
	 
	
}
