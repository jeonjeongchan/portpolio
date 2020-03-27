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
<title>주문</title>
</head>
<body>
    <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">결제</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>결제</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section">
      <div class="container">
       <div class="row">         
          <div class="col-xl-12 ftco-animate">
			<form name="payForm" method="post" action="/order" class="billing-form ftco-bg-dark p-3 p-md-5">				
							<h3 class="mb-4 billing-heading">결제 세부 정보</h3>
	          	<div class="row align-items-end">
	              <div class="col-md-12">
	                <div class="form-group">
	                	<label for="lastname">이름</label>
	                  <input type="text" class="form-control" placeholder="" value="${user.user_name}">
	                </div>
                </div>
		        <div class="w-100"></div>
		            <div class="col-md-12">
	                <div class="form-group">
	                	<label for="phone">전화번호</label>
	                  <input type="text" class="form-control" placeholder="" value="${user.user_phonenumber}">
	                </div>
	              </div>
	            </div>
	          <div class="row mt-5 pt-3 d-flex">
	          	<div class="col-md-12 d-flex">
	          		<div class="cart-detail cart-total ftco-bg-dark p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">Cart Total</h3>
	          			<p class="d-flex">
		    						<span>총 금액</span>
		    						<span><fmt:formatNumber value="${map.sumMoney}" type="number"/></span>
		    					</p>
		    					<p class="d-flex"  id="discount">
		    						<span>할인</span>
		    						<span><fmt:formatNumber value="0" type="number"/></span>
		    					</p>
		    					<hr>
		    					<p class="d-flex total-price">
		    						<span>최종 금액</span>
		    						<span><fmt:formatNumber value="${map.sumMoney - map.discount}" type="number"/></span>
		    					</p>
								<button type="submit" class="btn btn-primary btn-sm" style="float:right;">주문</button>
	          	
					</div>	    
	          	</div>	        				
	          </div>
          </form><!-- END -->
          </div> <!-- .col-md-8 -->
        </div>
      </div>
    </section> <!-- .section -->
    
    


</body>
</html>
</layoutTag:layout>