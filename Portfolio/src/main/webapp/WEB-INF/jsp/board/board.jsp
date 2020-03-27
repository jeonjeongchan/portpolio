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
<title>스와니 게시판</title>
</head>
<body>

	<section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">게시판</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>게시판</span></p>
            </div>

          </div>
        </div>
      </div>
    </section> 

<section class="ftco-section">
<div class="container">
    <div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-list-alt"></span> 게시글 목록</label>
    </div>
    
    <div class="col-xs-12">
        <table class="table table-hover">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>날짜</th>
            </tr>
              <c:forEach var="boardVar" items="${boardList}">
                  <tr onclick="location.href='/board/${boardVar.board_no}'">
                      <td>${boardVar.board_no}</td>
                      <td>${boardVar.board_title}</td>
                      <td>${boardVar.user_id}</td>
                      <td>${boardVar.board_cnt}</td>
                      <td>${boardVar.board_regdate}</td>
                  </tr>
              </c:forEach>
        </table>
    </div>
	      <button class="btn btn-primary btn-sm" style="float:right;" onclick="location.href='/board/post'">글쓰기</button>
</div>
</section>
</body>
</html>
</layoutTag:layout>