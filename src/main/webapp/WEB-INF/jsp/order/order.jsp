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
<title>스와니 - 주문 현황</title>
</head>
<body>

    <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">주문 현황</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>주문 현황</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
	
		
		<section class="ftco-section ftco-cart">
		<c:choose>
			<c:when test="${map.count == 0}">
					<h2 class="mb-4">주문한 메뉴가 없습니다.</h2>	
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
						        <th>주문 번호</th>
						        <th>총 가격</th>
						        <th>주문 날짜</th>
						      </tr>
						    </thead>
						    <tbody>
						      <c:forEach var="list" items="${map.orderList}" varStatus="i">
						      <tr class="text-center" onclick="location.href='/order/${list.order_no}'">

						        <td class="product-name">
						        	<h3>${list.order_no}</h3>
						        </td>
						        
						        <td class="price">${list.order_sum_money}</td>
						        						        
						    					        
						        <td class="date">${list.order_date}</td>

						      </tr><!-- END TR-->
						    </c:forEach>
						    </tbody>
						  </table>
					  </div>
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