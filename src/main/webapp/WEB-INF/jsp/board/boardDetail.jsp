<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 상세</title>
</head>
<body>
 
	<section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(${path}/resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">게시판 상세</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>게시판</span> <span>게시글 상세</span></p>
            </div>

          </div>
        </div>
      </div>
    </section> 

	<section class="ftco-section">
		<div class="container">
	    <div class="col-xs-12" style="margin:15px auto;">
	        <label style="font-size:20px;"><span class="glyphicon glyphicon-list-alt"></span>게시글 상세</label>
	    </div>
	 
	    <div class="col-xs-12">
	        <form action="/update" method="post">
	            <dl class="dl-horizontal">
	              <dt>글번호</dt>
	              <dd>${boardDetail.board_no}</dd>
	              
	              <dt>제목</dt>
	              <dd>${boardDetail.board_title}</dd>
	              
	              <dt>내용</dt>
	              <dd>${boardDetail.board_content}</dd>
	              
	              <dt>작성자</dt>
				  <dd>${boardDetail.user_id}</dd>
	              
	              <dt>작성날짜</dt>
	              <dd>${boardDetail.board_regdate}</dd>
	              
	              <dt>조회수</dt>
	              <dd>${boardDetail.board_cnt}</dd>
	            </dl>
	        </form>
	        <div class="btn-group btn-group-sm" role="group" style="float:right;">
	          <button type="button" class="btn btn-default" onclick="location.href='/board/Delete/${boardDetail.board_no}'">삭제</button>
	          <button type="button" class="btn btn-default" onclick="location.href='/board/put/${boardDetail.board_no}'">수정</button>
	          <button type="button" class="btn btn-default" onclick="location.href='/board'"> 게시판 </button>
	        </div>
	    </div>
	</div>
	</section> 
 
</body>
</html>
</layoutTag:layout>