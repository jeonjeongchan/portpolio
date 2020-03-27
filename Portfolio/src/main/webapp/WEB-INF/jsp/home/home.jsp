<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>  

<layoutTag:layout>                                          <!-- 여는 태그 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스와니</title>
</head>
<body>

    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">The Best Coffee Testing Experience</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main2.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">Amazing Taste &amp; Beautiful Place</h1>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main3.png);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">Creamy Hot and Ready to Serve</h1>         
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-intro">
    	<div class="container-wrap">
    		<div class="wrap d-md-flex align-items-xl-end">
	    		<div class="info">
	    			<div class="row no-gutters">
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-phone"></span></div>
	    					<div class="text">
	    						<h3>Call</h3>
	    						<p>032-551-8678</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-my_location"></span></div>
	    					<div class="text">
	    						<h3>Address</h3>
	    						<p>인천광역시 계양구 박촌동 114-1번지 2층</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-clock-o"></span></div>
	    					<div class="text">
	    						<h3>Open & Close</h3>
	    						<p>10:00am - 11:00pm</p>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-about d-md-flex">
    	<div class="one-half img" style="background-image: url(resources/img/picture/swany_main4.png);"></div>
    	<div class="one-half ftco-animate">
    		<div class="overlap">
	        <div class="heading-section ftco-animate ">
	        	<span class="subheading">Discover</span>
	          <h2 class="mb-4">Our Story</h2>
	        </div>
	        <div>
	  				<p>평생을 사랑해도 그리운 그대 스와니..</p>
	  			</div>
  			</div>
    	</div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row align-items-center">
    			<div class="col-md-6 pr-md-5">
    				<div class="heading-section text-md-right ftco-animate">
	          	<span class="subheading">Discover</span>
	            <h2 class="mb-4">Our Menu</h2>
	            <p class="mb-4">스와니만의 손길이 담겨있는 커피와 차, 손수 만든 고소한 빵 냄새. <br>다양한 메뉴들이 준비되어 있습니다.</p>
	            <p><a href="/menu" class="btn btn-primary btn-outline-primary px-4 py-3">메뉴 보기</a></p>
	          </div>
    			</div>
    			<div class="col-md-6">
    				<div class="row">
    					<div class="col-md-6">
    						<div class="menu-entry">
		    					<a href="#" class="img" style="background-image: url(resources/images/menu-1.jpg);"></a>
		    				</div>
    					</div>
    					<div class="col-md-6">
    						<div class="menu-entry mt-lg-4">
		    					<a href="#" class="img" style="background-image: url(resources/images/menu-2.jpg);"></a>
		    				</div>
    					</div>
    					<div class="col-md-6">
    						<div class="menu-entry">
		    					<a href="#" class="img" style="background-image: url(resources/images/menu-3.jpg);"></a>
		    				</div>
    					</div>
    					<div class="col-md-6">
    						<div class="menu-entry mt-lg-4">
		    					<a href="#" class="img" style="background-image: url(resources/images/menu-4.jpg);"></a>
		    				</div>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(resources/images/bg_2.jpg);" data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading">Discover</span>
            <h2 class="mb-4">best seller</h2>
            <p>스와니에서 가장 인기있는 메뉴들입니다.</p>
          </div>
        </div>
        <div class="row">
        	<c:forEach var="bestSellerVar" items="${bestSeller}">
        	<div class="col-md-3">
        		<div class="menu-entry">
    					<a href='/menu/${bestSellerVar.menu_no}' class="img" style="background-image: url('${bestSellerVar.menu_photo}');"></a>
    					<div class="text text-center pt-4">
    						<h3><a href="#">${bestSellerVar.menu_name}</a></h3>
    						<p>${bestSellerVar.menu_info}</p>
 			              	<p class="price"><span>${bestSellerVar.menu_price}</span></p>
			              	<p><a href="/menu/${bestSellerVar.menu_no}" class="btn btn-primary btn-outline-primary">상세 보기</a></p>
    					</div>
    				</div>
        	</div>
        	</c:forEach>
        </div>
    	</div>
    </section>

    <section class="ftco-gallery">
    	<div class="container-wrap">
    		<div class="row no-gutters">
					<div class="col-md-3 ftco-animate">
						<a href="#" class="gallery img d-flex align-items-center" style="background-image: url(resources/images/gallery-1.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="gallery img d-flex align-items-center" style="background-image: url(resources/images/gallery-2.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="gallery img d-flex align-items-center" style="background-image: url(resources/images/gallery-3.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    					</div>
						</a>
					</div>
					<div class="col-md-3 ftco-animate">
						<a href="#" class="gallery img d-flex align-items-center" style="background-image: url(resources/images/gallery-4.jpg);">
							<div class="icon mb-4 d-flex align-items-center justify-content-center">
    					</div>
						</a>
					</div>
        </div>
    	</div>
    </section>

</body>
</html>
</layoutTag:layout>