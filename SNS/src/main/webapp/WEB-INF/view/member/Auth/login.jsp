<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hamohamo</title>

<!-- 구글폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500&display=swap" rel="stylesheet">

<style>
*{
	font-family: 'Gothic A1', sans-serif;
}

body {
	width: 1024px;
	height: 860px;
	margin: 10px auto;
}

.bigbox {
	display: flex;
	flex-direction: column;
	justify-content: space-evenly;
	align-items: center;
	width: 1024px;
	height: 860px;
	margin: 10px auto;
	align-items: center;
}

.box {
	display: flex;
	flex-direction: column; /*수직정렬*/
	justify-content: space-evenly;
	flex-grow: 2;
	border-radius: 5%;
	width: 420px;
	height: 280px;
	background-color: #FAF0E4;
	padding-top: 10px;
	text-align: center;
}

.inputbox>input {
	font-size: 20px;
	width: 350px;
	height: 40px;
	margin: 0px 30px;
	background-color: white;
	border-color: gray;
	margin-bottom: 20px;
	border-style : none;
}

.inputbox{
	display : flex;
	flex-direction: column;
}

a {
	width: 200px;
	height: 50px;
}

a.ex1 {
	display: inline-block;
	line-height: 50px;
	text-align: center;
}

.ex2 {
	display: flex;
	justify-content: space-evenly;
}

.hamo {
	margin-top: 50px;
	height: 100xp;
}

label {
	font-size: 50px;
	font-weight: bold;
	text-align: center;
}

.login {
	width: 200px;
	height: 50px;
	background-color: #9BCDD2;
	border-style: none;
	cursor: pointer;
	font-size : 21px;
	border-radius : 10%;
}

.login:hover{
	animation: jelly 0.5s;
}

@keyframes jelly {
  25% {transform: scale(0.9, 1.1);}
  50% { transform: scale(1.1, 0.9);}
  75% { transform: scale(0.95, 1.05);}
}


.msg {
	font-size: 1.5rem;
	text-align : center;
	margin-top : 30px;
}

.joinbox {
	display: flex;
	justify-content : center;
	width: 320px;
	border-top: 10px dotted #FF8551;
}

.joinB {
	margin-top: 50px;
	margin-bottom: 20px;
	font-size: 20px;
}

.join {
	font-size: 16px;
	width: 80px; /* 폰트 크기 조절 */
	height : 23px;
	margin-top : 50px;
	margin-left : 3px;
	line-height : 23px;
	border-style : none;
	cursor: pointer;
	background-color : white;
	color : black;
}

.join:hover{
	color : #FF8551;
}
</style>
</head>
<body>


	<div class="bigbox">
		<div class="hamo">
			<img src="Resource/hamog.jpg" width="220" height="60">
		</div>

		<form action="login.do" method="post">
			<div class="box">
			<div class="inputbox"><input name="id" type="text" placeholder="아이디" />
				<input name="pw" type="password" placeholder="비밀번호" /></div>
				
				<div class="ex2">
					<button class="login">로그인</button>
				</div>
			</div>
				<c:if test="${not empty msg}">
					<div class="msg">${msg}</div>
				</c:if>
		</form>


		<div class="joinbox">
			<%-- msg 변수에 값이 있을 때에만 출력 --%>

			<div class="joinB">회원이 아니신가요?</div>
			<button class="join" onclick="goToJoinPage()">가입하기</button>


		</div>
	</div>


	<script>
		function goToJoinPage() {
			window.location.href = "<c:url value='/join.jsp' />";
		}
	</script>

</body>
</html>