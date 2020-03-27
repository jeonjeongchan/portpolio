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
<title>스와니 - 메뉴</title>
</head>
<body>
	<script>
	
		$(function() {
			
			$(".btn btn-primary btn-outline-primary").click(function() {
				
					alert("로그인을 해주세요");
					location.href("/loginPage");
				
				
		});	
	});	
	
	</script>
    
    
    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">메뉴</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>메뉴</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-menu mb-5 pb-5">
    	<div class="container">
    		<div class="row justify-content-center mb-5">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading">Discover</span>
            <h2 class="mb-4">our menu</h2>
            <p>스와니만의 손길이 담겨있는 커피와 차, 손수 만든 고소한 빵 냄새. 다양한 메뉴들이 준비되어 있습니다.</p>
          </div>
        </div>
    		<div class="row d-md-flex">
	    		<div class="col-lg-12 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		              <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">커피</a>

		              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">음료</a>

		              <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">디저트</a>
		             
		            </div>
		          </div>
		          
		          <div class="col-md-12 d-flex align-items-center">
		            <div class="tab-content ftco-animate" id="v-pills-tabContent">
		              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
			              	<div class="row">
			              	<c:forEach var="menuVar" items="${menuList1}">
			              		<div class="col-md-4 text-center">
			              			<div class="menu-wrap">
			              				<a href='/menu/${menuVar.menu_no}' class="menu-img img mb-4" style="background-image: url('${menuVar.menu_photo}');"></a>
			              				<div class="text">
			              					<h3><a href="#">${menuVar.menu_name}</a></h3>
			              					<p>${menuVar.menu_info}</p>
			              					<p class="price"><span>${menuVar.menu_price}</span></p>
			              					<p><a href="/menu/${menuVar.menu_no}" class="btn btn-primary btn-outline-primary">상세 보기</a></p>
			              				</div>
			              			</div>
			              		</div>
			              	</c:forEach>
			              </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
			              	<div class="row">
			              	<c:forEach var="menuVar" items="${menuList2}">
			              		<div class="col-md-4 text-center">
			              			<div class="menu-wrap">
			              				<a href='/menu/${menuVar.menu_no}' class="menu-img img mb-4" style="background-image: url('${menuVar.menu_photo}');"></a>
			              				<div class="text">
			              					<h3><a href="#">${menuVar.menu_name}</a></h3>
			              					<p>${menuVar.menu_info}</p>
			              					<p class="price"><span>${menuVar.menu_price}</span></p>
			              					<p><a href="/menu/${menuVar.menu_no}" class="btn btn-primary btn-outline-primary">상세 보기</a></p>
			              				</div>
			              			</div>
			              		</div>
			              	</c:forEach>
			              </div>
		              </div>

					<div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
			              	<div class="row">
			              	<c:forEach var="menuVar" items="${menuList3}">
			              		<div class="col-md-4 text-center">
			              			<div class="menu-wrap">
			              				<a href='/menu/${menuVar.menu_no}' class="menu-img img mb-4" style="background-image: url('${menuVar.menu_photo}');"></a>
			              				<div class="text">
			              					<h3><a href="#">${menuVar.menu_name}</a></h3>
			              					<p>${menuVar.menu_info}</p>
			              					<p class="price"><span>${menuVar.menu_price}</span></p>
			              					<p><a href="/menu/${menuVar.menu_no}" class="btn btn-primary btn-outline-primary">상세 보기</a></p>
			              				</div>
			              			</div>
			              		</div>
			              	</c:forEach>
			              </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>
	

</body>
</html>
</layoutTag:layout>