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
<title>스와니 - 메뉴 상세</title>
</head>
<body>


	
   <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(${path}/resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">메뉴 상세</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>메뉴 상세</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    <form action="/cart" method="post">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="#" class="image-popup"><img src="${path}/${menuDetailList.menu_photo}" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>${menuDetailList.menu_name}</h3>
    				<p class="price"><span>${menuDetailList.menu_price}</span></p>
						<p>
							${path}${menuDetailList.menu_info}
						</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">

		            	</div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="icon-minus"></i>
	                	</button>
	            		</span>
	             	<input type="hidden" name="menu_no" value="${menuDetailList.menu_no}">
	             	<input type="text" id="cart_count" name="cart_count" class="form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="icon-plus"></i>
	                 </button>
	             	</span>
	          	</div>
          	</div>
          	
          		<button type="submit" class="btn btn-primary btn-outline-primary"">장바구니에 담기</button>
    		
    			</div>
    		</div>
    	</div>
    	</form>
    </section>


      
</body>
</html>
</layoutTag:layout>