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
<title>스와니 - 오시는 길</title>
</head>
<body>

   <section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">찾아오시는 길</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">홈</a></span> <span>찾아오시는 길</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section contact-section">
      <div class="container mt-6">
        <div class="row block-9">
					<div class="col-md-4 contact-info ftco-animate">
						<div class="row">
							<div class="col-md-12 mb-4">
	              <h2 class="h4">연락처</h2>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>주소:</span> 인천광역시 계양구 박촌동 114-1번지 2층</p>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>전화번호:</span> <a href="tel://1234567920"> 032-551-8678</a></p>
	            </div>
	            <div class="col-md-12 mb-3">
	              <p><span>Email:</span> <a href="mailto:info@yoursite.com"> junjungchan@naver.com</a></p>
	            </div>
						</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.0745439749303!2d126.74475441526958!3d37.553307479800424!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c82f181d68871%3A0xf6a28c30b7121be9!2z7Lm07Y6Y7Iqk7JmA64uI!5e0!3m2!1sko!2skr!4v1585298025381!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>       
        </div>
      </div>
    </section>
</body>
</html>
</layoutTag:layout>