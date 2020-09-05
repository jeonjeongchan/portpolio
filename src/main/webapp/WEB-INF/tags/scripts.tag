<%@ tag language="java" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <script src="/resources/js/jquery.min.js"></script>
  <script src="/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/js/popper.min.js"></script>
  <script src="/resources/js/bootstrap.min.js"></script>
  <script src="/resources/js/jquery.easing.1.3.js"></script>
  <script src="/resources/js/jquery.waypoints.min.js"></script>
  <script src="/resources/js/jquery.stellar.min.js"></script>
  <script src="/resources/js/owl.carousel.min.js"></script>
  <script src="/resources/js/jquery.magnific-popup.min.js"></script>
  <script src="/resources/js/aos.js"></script>
  <script src="/resources/js/jquery.animateNumber.min.js"></script>
  <script src="/resources/js/bootstrap-datepicker.js"></script>
  <script src="/resources/js/jquery.timepicker.min.js"></script>
  <script src="/resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6MszGz1KbMwzDW2dU9KVFNnymQf5PlLA&libraries&callback=initMap"></script>
  <script src="/resources/js/google-map.js"></script>
  <script src="/resources/js/main.js"></script>
  
    <script>
		$(function(){

		var cart_count = 0;
		  
			$('.quantity-right-plus').click(function(e) {
		        
		        // Stop acting like a button
		        e.preventDefault();
		        
		        // Get the field name
		        var cart_count = parseInt($('#cart_count').val());
		        
		        // If is not undefined
		                    
		            // 수량 증가
		            if (cart_count > 9) {
		            	alert("최대 개수는 10개입니다.")
		            } else {
		            	$('#cart_count').val(cart_count + 1);
		            }
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        
		    	// Stop acting like a button
		        e.preventDefault();
		        
		    	// Get the field name
		        var cart_count = parseInt($('#cart_count').val());
		        
		       
		            // 수량감소
		            if (cart_count <= 1) {
		            	alert("최소개수는 1개입니다.")
		            } else if (cart_count > 0) {
		            	$('#cart_count').val(cart_count - 1);
		            }
		    });
		    
		});
	</script>