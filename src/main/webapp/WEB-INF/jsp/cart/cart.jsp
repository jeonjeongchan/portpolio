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
<title>스와니 - 장바구니</title>
</head>
<body>

    <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">장바구니</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>장바구니</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
	
		
		<section class="ftco-section ftco-cart">
		<c:choose>
			<c:when test="${map.count == 0}">
					<h2 class="mb-4">장바구니가 비었습니다</h2>	
			</c:when>		
			<c:otherwise>
			<form name="cartForm" method="post" action="/order">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>메뉴 사진</th>
						        <th>메뉴 이름</th>
						        <th>메뉴 가격</th>
						        <th>수량</th>
						        <th>총 가격</th>
						      </tr>
						    </thead>
						    <tbody>
						      <c:forEach var="list" items="${map.cartList}" varStatus="i">
						      <tr class="text-center">
						        <td class="product-remove"><a href="/cart/delete/${list.menu_no}"><span class="icon-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url('${list.menu_photo}');"></div></td>
						        
						        <td class="product-name">
						        	<h3>${list.menu_name}</h3>
						        </td>
						        
						        <td class="price">${list.menu_price}</td>
						        						        
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" id="cart_count" name="cart_count" class="quantity form-control input-number" value="${list.cart_count}" min="1" max="100">
					          	</div>
					          </td>
						        
						        <td class="total">${list.money}</td>
						      </tr><!-- END TR-->
						    </c:forEach>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>합계</span>
    						<span>${map.sumMoney}</span>원
    					</p>
    					<p class="d-flex">
    						<span>할인</span>
    						<span>0</span>원
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>최종 금액</span>
    						<span>${map.sumMoney}</span>원
    					</p>
    				</div>
    				<p class="text-center"><a href="/checkout" class="btn btn-primary py-3 px-4">결제 하기</a></p>
    			</div>
    		</div>
			</div>
			</form>
			</c:otherwise>
			</c:choose>
		</section>
</body>
</html>
</layoutTag:layout>