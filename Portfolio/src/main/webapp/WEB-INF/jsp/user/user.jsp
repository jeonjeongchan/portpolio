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
<title>회원 목록</title>
</head>
<body>
 <form action="/grant_change" method="post">
<div class="container">
    <div class="col-xs-12" style="margin:15px auto;">
        <label style="font-size:20px;"><span class="glyphicon glyphicon-list-alt"></span>회원 목록</label>
    </div>
    
    <div class="col-xs-12">
        <table class="table table-hover">
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>비밀번호</th>
                <th>유저 등급</th>
                <th>포인트</th>
                <th>전화번호</th>
                <th>회원가입 일자</th>
            </tr>
              <c:forEach var="userVar" items="${userList}">
                  <tr>
                      <td>${userVar.user_id}</td>
                      <td>${userVar.user_name}</td>
                      <td>${userVar.user_password}</td>
                      <td>${userVar.user_grant}
                    	
                     	<select id="grantSelect" name="grantSelect" style="width:70;">
                     	
					 	    <option value="관리자"> 관리자 </option>

						    <option value="회원"> 회원 </option>
						
						</select>
                      
                      </td>
                      
                      <td>${userVar.user_point}</td>
                      <td>${userVar.user_phonenumber}</td>
                      <td>${userVar.user_regdate}</td>
                  </tr>
              </c:forEach>
        </table>
    </div>
</div>
 </form> 
</body>
</html>
</layoutTag:layout>