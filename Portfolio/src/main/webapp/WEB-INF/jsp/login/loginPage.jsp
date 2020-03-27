<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>  
 
<layoutTag:layout>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>

<script type="text/javascript">



	function loginsuccess(){

		alert("환영합니다.");

		location.href='/';

// 		frm.submit();

	}



	function loginCheck(){

		var param = "id" + "=" + $("#id").val() + "&" +"pw" + "="+ $("#pw").val();

		$.ajax({

			url : "/login",
			type : "GET",
			data : param,
			cache : false,
			async : false,
			dataType : "text",

			success : function(response) {								

				if (response == '1') {

					loginsuccess();

				}

				else {

					alert("아이디 또는 비번이 틀렸습니다. 다시 입력하세요.")

					return false;

				}	
				
				alert(check);

			},

			error : function(request, status, error) {

				if (request.status != '0') {

					alert("code : " + request.status + "\r\nmessage : "

							+ request.reponseText + "\r\nerror : " + error);

				}
			}
		});
	}

</script>

</head>

<body>

    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">로그인</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>로그인</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
	<section class="ftco-section">
	<br>

	<form name="frm" id="frm" action="/session">

		<table border="0" align="center" cellspacing="1" bgcolor="PapayaWhip" width="300" height="150">

			<tr>

				<td colspan="2" bgcolor="PeachPuff" align="center" height="30"><b>로그인 확인</b></td>

			</tr>



			<tr align="center">

				<td bgcolor="PeachPuff" width="100">아이디</td>

				<td><input type="text" id="id" name="id" size="12" maxlength="12"></td>

			</tr>



			<tr align="center">

				<td bgcolor="PeachPuff">비밀번호</td>

				<td><input type="password" id="pw" name="pw" size="12" maxlength="12"></td>

			</tr>

			<tr>

				<td colspan="2" bgcolor="PeachPuff" align="center" height="30">

					<input type="button" value="로그인" onclick='loginCheck()'> 

					<input type="button" value="회원 가입" onclick="javascript:location.href='/register';">

				</td>
			</tr>
		</table>
	</form>
	</section>

</body>
</html>
</layoutTag:layout>