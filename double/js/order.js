var list_device_size = {
					'iphone7plus':'296',
					'iphone7':'271',
					'iphone6splus':'271',
					'iphone6s':'271',
					'iphone6':'271'					
				};

function getContentOrder() {
	var userId = (window.location.search.split('&')[0]).split('=')[1];
	var passwordId = (window.location.search.split('&')[1]).split('=')[1];
	//var url_case = window.location.hostname+'/sroce/iphone/';
	var url_case = 'localhost/sroce/double/';
	var background_case = document.getElementById('phone-background').style.background;
	if(background_case==''){
		background_case = '#fff';
	}
	var tem_height = document.getElementById('template-case').clientHeight;
	var tem_width = document.getElementById('template-case').clientWidth;
	var height_device1 = document.getElementById('double-case-left').clientHeight;
	var width_device1 = document.getElementById('double-case-left').clientWidth;
	var height_device2 = document.getElementById('double-case-right').clientHeight;
	var width_device2 = document.getElementById('double-case-right').clientWidth;
	
	var height_white1 = $("#divwhite1 div").height();
	var width_white1 = $("#divwhite1 div").width();
	var height_white2 = $("#divwhitecase1 div").height();
	var width_white2 = $("#divwhitecase1 div").width();
	var height_white3 = $("#divwhitecase2 div").height();
	var width_white3 = $("#divwhitecase2 div").width();
	var height_white4 = $("#divwhite2 div").height();
	var width_white4 = $("#divwhite2 div").width();	
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
				'device1': document.getElementById('device-box-name-1').value,
				'device2': document.getElementById('device-box-name-2').value,				
				'imagedevice1': document.getElementById('device-box-1').value,
				'imagedevice2': document.getElementById('device-box-2').value,
				'height':tem_height,
				'width':tem_width,
				'height_device1':height_device1,
				'width_device1':width_device1,
				'height_device2':height_device2,
				'width_device2':width_device2,
				'width_white1':width_white1,
				'height_white1':height_white1,
				'width_white2':width_white2,
				'height_white2':height_white2,
				'width_white3':width_white3,
				'height_white3':height_white3,
				'width_white4':width_white4,
				'height_white4':height_white4,				
				'zoom': list_device_size[document.getElementById('device-box-name-1').value]/width_device1,
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
					window.location.replace('http://phonecase.miyatsu.vn/double/view.php');
				}).fail(function(xhr, status, error){
					
				}); 
			setTimeout(function () {
				window.location.replace('http://phonecase.miyatsu.vn/double/view.php');
			});
			
		}else{
			console.log(count);
		}
		
	}
	 
	
}
