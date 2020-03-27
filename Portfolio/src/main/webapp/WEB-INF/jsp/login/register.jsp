<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" tagdir="/WEB-INF/tags"%>  
 
<layoutTag:layout>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>

<script type="text/javascript">

	var count = 0;

	function idCheck() {

		var text = $("#user_id").val();

        var regexp = /[0-9a-zA-Z]/; // 숫자,영문,특수문자

        // var regexp = /[0-9]/; // 숫자만

		// var regexp = /[a-zA-Z]/; // 영문만

        
        for (var i = 0; i < text.length; i++) {

            if (text.charAt(i) != " " && regexp.test(text.charAt(i)) == false ){

				alert("한글이나 특수문자는 입력불가능 합니다.");

				return false;

			}

        }

        overlapCheck();

	}

	function overlapCheck() {

		var param = "user_id" + "=" + $("#user_id").val();

		if ($("#user_id").val() == '' || $("#user_id").val() == null) {

			alert("아이디를 입력하세요");

			return false;

		}

		$.ajax({

			url : "/overlaptest",
			type : "GET",
			data : param,
			cache : false,
			async : false,
			dataType : "text",

			success : function(response) {				

				if (response == '0') {
					
					count = 1;

					alert("아이디가 중복이 되지 않습니다. 쓰셔도 됩니다.")

				} else {

					alert("아이디가 중복이 됩니다. 다시 입력 해주세요");

					return false;

				}	

			},

			error : function(request, status, error) {

				if (request.status != '0') {

					alert("code : " + request.status + "\r\nmessage : "

							+ request.reponseText + "\r\nerror : " + error);

				}
			}
		});
	}

	function formCheck() {

		var user_id = document.getElementById('user_id');

		var user_password = document.getElementById('user_password');
		
		var user_password_check = document.getElementById('user_password_check');

		var hp1 = document.getElementById('hp1'); 

		var hp2 = document.getElementById('hp2'); 

		var hp3 = document.getElementById('hp3'); 

		var hp = hp1.value + "-" + hp2.value + "-" + hp3.value;

		

		/*핸드폰 번호 길이 체크*/


		if (user_id.value == '' || user_id.value == null) {

			alert('아이디를 입력하세요');

			focus.user_id;

			return false;

		}



		if (user_password.value == '' || user_password.value == null) {

			alert('비밀번호를 입력하세요');

			focus.user_password;

			return false;

		}
		
		
		if (user_name.value == '' || user_name.value == null) {

			alert('이름을 입력하세요');

			focus.user_name;

			return false;

		}

		/*비밀번호와 비밀번호확인란 같은지 확인*/

		if (user_password.value != user_password_check.value){

			alert("비밀번호와 비밀번호 확인란이 다릅니다.");

			focus.user_password;

			return false;

		}


 		/*핸드폰 번호 길이 체크*/

		if (hp2.value.length <= 2 || hp3.value.length != 4){

			alert("휴대폰번호를 제대로 입력해주세요");

			focus.hp2;

			return false;

		}

 		/*핸드폰이 숫자만 들어가는지 체크*/

 		if(isNaN(hp2.value) || isNaN(hp3.value))

		{

			alert("휴대폰번호는 숫자만 들어갈 수 있습니다.");

			return false;

		}

 		/**/

		if (hp2.value.length > 2 || hp3.value.length == 4) {

			document.getElementById("user_phonenumber").value = hp;

		}

		if (count == 0) {

			alert("중복확인을 눌러주세요");

			return false;

		} else {

			save();

		}

	}

	function init() {

		count = 0;

	}

	function save() {

// 		alert($("#password_hint").val());

// 		alert($("#member_HP").val());

		var str3 = document.getElementById('join');

		str3.submit();

		alert("가입이 완료되었습니다.")

	}

	

	function countCheck() {

		if (count == 1) {
			
			count = 0;
		
		}

	}

</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>회원가입</title>

</head>

<body bgcolor="#ffffff" text="#000000">

    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(resources/img/picture/swany_main.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">회원가입</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="/">홈</a></span> <span>회원가입</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
	<section class="ftco-section">

	<form action="/register" method="post" id="join">

		<table width="550" align="center" border="1" bordercolor="ADD8E6"

			cellpadding="5">

			<tr>

				<td height="30" align="center" bgcolor="#FFDEAD">아이디</td>

				<td bgcolor="#E0FFFF"><input type="text" size="10" id="user_id" name="user_id" maxlength="10" onkeydown="countCheck();" onkeypress="countCheck();">&nbsp;<input type="button" value="중복확인" onclick='idCheck()'></td>

			</tr>

			<tr>

				<td height="30" align="center" bgcolor="#FFDEAD">비밀번호</td>

				<td bgcolor="#E0FFFF"><input type="password" id="user_password" name="user_password" size=12 maxlength="12"></td>

			</tr>
			
			<tr>

				<td height="30" align="center" bgcolor="#FFDEAD">이름</td>

				<td bgcolor="#E0FFFF"><input type="text" id="user_name" name="user_name" size=12 maxlength="12"></td>

			</tr>

			<tr>

				<td height="30" align="center" bgcolor="#FFDEAD">비밀번호확인</td>

				<td bgcolor="#E0FFFF"><input type="password" id="user_password_check" name="user_password_check" size=12 maxlength="12"></td>

			</tr>

			<tr>

				<td rowspan="2" height="30" align="center" bgcolor="#FFDEAD">연락처</td>

				<td bgcolor="#E0FFFF">

					<select id="hp1" name="hp1" style="width:70;">

					   <option value="010"  selected> 010 </option>

					   <option value="011"> 011 </option>

					   <option value="016"> 016 </option>

					   <option value="017"> 017 </option>

					   <option value="018"> 018 </option>

					   <option value="019"> 019 </option>

					</select>

					-

					<input type="text" id="hp2" name="hp2" size="4" maxlength="4">

					-

					<input type="text" id="hp3" name="hp3" size="4" maxlength="4">

					<input type="hidden" id="user_phonenumber" name="user_phonenumber" >

				</td>

			</tr>

			<tr>

				<td colspan="2" height="30" align="center" bgcolor="#FFDEAD">

				<input type="button" id="join" name="join" value="가입하기" onclick="formCheck()">&nbsp;&nbsp; <input type="reset" value="리셋하기" onclick='init()'>

				<input type="button" id="back" value="뒤로가기" onclick="location.href='/'"></td>

			</tr>

		</table>

	</form>
</section>
</body>
</html>
</layoutTag:layout>