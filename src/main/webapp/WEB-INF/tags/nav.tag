<%@ tag language="java" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


  	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="/">스와니<small>cafe</small></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> 메뉴
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="/" class="nav-link">홈</a></li>
	          <li class="nav-item"><a href="/menu" class="nav-link">메뉴</a></li>
	          <li class="nav-item"><a href="/board" class="nav-link">게시판</a></li>
	          <li class="nav-item"><a href="/contact" class="nav-link">찾아오시는 길</a></li>
	       	         	  
	       	  <c:catch>
			    <c:choose>
			        <c:when test="${user == null}">
	          			<li class="nav-item"><a href="/register" class="nav-link">회원가입</a></li>
	          			<li class="nav-item"><a href="/loginPage" class="nav-link">로그인</a></li>	          	
			        </c:when>
			        <c:otherwise>
			            <c:choose>
			                <c:when test="${cafeuser.user_grant eq '관리자' }">
			                	<li class="nav-item dropdown">
					              <a class="nav-link dropdown-toggle" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">주문</a>
					              <div class="dropdown-menu" aria-labelledby="dropdown04">
					              	<a class="dropdown-item" href="/order2">주문현황</a>
					                <a class="dropdown-item" href="/cart">장바구니</a>
					              </div>
					            </li>
								<li class="nav-item"><a href="/logout" class="nav-link">로그아웃</a></li>
			                </c:when>
			                <c:otherwise>
									 <li class="nav-item dropdown">
						              <a class="nav-link dropdown-toggle" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">주문</a>
						              <div class="dropdown-menu" aria-labelledby="dropdown04">
						              	<a class="dropdown-item" href="/order">주문현황</a>
						                <a class="dropdown-item" href="/cart">장바구니</a>
						              </div>
						            </li>
									<li class="nav-item"><a href="/logout" class="nav-link">로그아웃</a></li>
			                </c:otherwise>
			            </c:choose>
			        </c:otherwise>
			    </c:choose>
			</c:catch>
	        </ul>
	      </div>
		  </div>
	  </nav>
    <!-- END nav -->