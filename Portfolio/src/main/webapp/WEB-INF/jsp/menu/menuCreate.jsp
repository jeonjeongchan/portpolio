<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 생성</title>
</head>
<body>
 
<div class="container">
    <div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-edit"></span>메뉴 생성</label>
    </div>
    
    <div class="col-xs-12">
        <form action="/menu/create" method="post" enctype="multipart/form-data"> <!-- 추가 -->
          <div class="form-group">
            <label for="menu_name">메뉴 이름</label>
            <input type="text" class="form-control" id="menu_name" name="menu_name" placeholder="이름을 입력하세요.">
          </div>
          <div class="form-group">
            <label for="menu_price">메뉴 가격</label>
            <input type="text" class="form-control" id="menu_price" name="menu_price" placeholder="금액을 입력하세요.">
          </div>
          <div class="form-group">
            <label for="menu_photo">메뉴 사진</label>
            <input type="text" class="form-control" id="menu_photo" name="menu_photo" placeholder="내용을 입력하세요.">
          </div>
          <div class="form-group">
            <label for="menu_info">메뉴 설명</label>
            <input type="text" class="form-control" id="menu_info" name="menu_info" placeholder="내용을 입력하세요.">
          </div>
          <div class="form-group">
            <label for="menu_type">메뉴 타입</label>
            <input type="text" class="form-control" id="menu_type" name="menu_type" placeholder="내용을 입력하세요.">
          </div>
          
          <button type="submit" class="btn btn-primary btn-sm" style="float:right;">작성</button>
          
        </form>
    </div>
</div> 
 
 
</body>
</html>
</layoutTag:layout>