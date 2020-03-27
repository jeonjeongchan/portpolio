<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 작성</title>
</head>
<body>
	
	<section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(${path}/resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">게시글 작성</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>게시판</span> <span>게시글 작성</span></p>
            </div>

          </div>
        </div>
      </div>
    </section> 
 
	<section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(${path}/resources/images/bg_3.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">게시글 작성</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>게시판</span> <span>게시글 작성</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>  
 
 
<section class="ftco-section">
<div class="container">
    <div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-edit"></span>게시글 작성</label>
    </div>
    
    <div class="col-xs-12">
        <form action="/board" method="post" enctype="multipart/form-data"> <!-- 추가 -->     
          <div class="form-group">
            <label for="board_title">제목</label>
            <input type="text" class="form-control" id="board_title" name="board_title" placeholder="제목을 입력하세요.">
          </div>
          <div class="form-group">
            <label for="board_content">내용</label>
            <input type="text" class="form-control" id="board_content" name="board_content" placeholder="내용을 입력하세요.">
          </div>

          <div class="form-group">
            <label for="board_writer">작성자</label>
            <input type="text" readonly="${user.user_id}" class="form-control" id="user_id" name="user_id" value="${user.user_id}">	
          </div>  
          
          <button type="submit" class="btn btn-primary btn-sm" style="float:right;">작성</button>
          
        </form>
    </div>
</div>
</section> 
 
 
</body>
</html>
</layoutTag:layout>