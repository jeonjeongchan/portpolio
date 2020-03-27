<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>
<layoutTag:layout>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메뉴 수정</title>
</head>
<body>
 
<div class="container">
    <div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-edit"></span>게시글 수정</label>
    </div>
 
    <div class="col-xs-12">
        <form action="/menu/put/${menuDetailList.menu_no}" method="post">
          <div class="form-group">
            <label for="menu_name">메뉴 이름</label>
            <input type="text" class="form-control" id="menu_name" name="menu_name"value="${menuDetailList.menu_name}">
          </div>
          <div class="form-group">
            <label for="menu_price">메뉴 가격</label>
            <input type="text" class="form-control" id="menu_price" name="menu_price" value="${menuDetailList.menu_price}">
          </div>
          <div class="form-group">
            <label for="menu_photo">메뉴 사진</label>
            <input type="text" class="form-control" id="menu_photo" name="menu_photo" value="${menuDetailList.menu_photo}">
          </div>
          <div class="form-group">
            <label for="menu_info">메뉴 정보</label>
            <input type="text" class="form-control" id="menu_info" name="menu_info" value="${menuDetailList.menu_info}">
          </div>
          <input type="hidden" name="menu_no" value="${menuDetailList.menu_no}"/>
          <button type="submit" class="btn btn-primary btn-sm" style="float:right;">수정</button>
        </form>
    </div>
</div>
 
</body>
</html>
</layoutTag:layout>
