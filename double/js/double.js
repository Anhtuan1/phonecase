var list_device = {
					'iphone7plus':'ico/iphone-case-temp.png',
					'iphone7':'ico/iphone-case-temp-iphone7.png',
					'iphone6splus':'ico/iphone-case-temp-iphone7.png',
					'iphone6s':'ico/iphone-case-temp-iphone7.png',
					'iphone6':'ico/iphone-case-temp-iphone7.png'					
				};

$(document).ready(function () {
	$('.owl-carousel').owlCarousel({ // .owl-carousel is the element selector
	  margin: 0, // gives space between carousel items
	  stagePadding: 0, // shows a bit of the next item, which is still not visible
	  loop:true,
	  dots: true,
	  autoPlay:1000,
	  responsive:{ // responsive behaviour
		0:{
		  items:1
		},
		768:{ // for example at 768 screen width, owl carousel will only show two items
		  items:3
		},
		970:{
		  items:3
		}
	  }
	  
	});			
	
		var select_device_case = 0;
	
		$('.nav-tabs a').click(function(){
			$(this).tab('show');
		})
		$('#chosse-device-box').hide();

		// Select tab by name
		$('.nav-tabs a[href="#home"]').tab('show')

		// Select first tab
		$('.nav-tabs a:first').tab('show') 

		// Select last tab
		$('.nav-tabs a:last').tab('show') 

		// Select fourth tab (zero-based)
		$('.nav-tabs li:eq(3) a').tab('show');
		
		$('#phone-case-double a').click(function(){	
			select_device_case = this.getAttribute("data");
			$('#chosse-device-box').show();			
		});
		
		$('#chosse-device-box a').click(function(){	
			var device_mid = this.getAttribute("device");	
			
			if(select_device_case == 1){				
				document.getElementById('left-phone-chosse').innerHTML = "<img src='"+list_device[device_mid]+"'/>";				
				document.getElementById('device-box-1').value = list_device[device_mid];
				document.getElementById('device-box-name-1').value = this.getAttribute("device");	
			}
			if(select_device_case == 2){
				document.getElementById('right-phone-chosse').innerHTML = "<img src='"+list_device[device_mid]+"'/>";	
				document.getElementById('device-box-2').value = list_device[device_mid];		
				document.getElementById('device-box-name-2').value = this.getAttribute("device");
			}			
			updateValueBox();
			$('#chosse-device-box').hide();	
			
		});
		
		$('#cancel_chosse_device').click(function(){ 
			$('#chosse-device-box').hide();
		});	
		
		$('#design-case').click(function(){	
			
			var strlink = "iphone7plus-design.html?"+new Date();
			$.ajax({
				type : "GET",
				dataType : "html",
				data : {
					
				},
				url : strlink,
				success : function(response)
				{
					$("#content-themes").empty();
					$("#content-themes").append(response);
					//$("#content-themes").hide().append(response).fadeIn(500);
					
				},
				error:function(error){
					
				}
			});		
				
		});

		heightslide();	

});


function heightslide(){
	
	var height_value_phone = document.getElementById('value-phone').clientHeight;
	var height_value_button = document.getElementById('design-case').clientHeight;
	var height_value_menu = document.getElementById('headersp').clientHeight;
	var height_slide = window.innerHeight - height_value_phone - height_value_button - height_value_menu-45;
	$(document.getElementById('left-phone-chosse')).css({'height': height_slide+'px'});
	$(document.getElementById('right-phone-chosse')).css({'height': height_slide+'px'});
	//$('.content_product_sp_slide img').css({'max-height': height_slide+'px'});		
	$('#design-case').hide();
	//$('#value-phone').hide();
	
}

function updateValueBox(){ 
	var check_1 = document.getElementById('device-box-1').value;
	var check_2 = document.getElementById('device-box-2').value;
	if(check_1 != ''&&check_2 != ''){
		$('#design-case').show();
	}

}
