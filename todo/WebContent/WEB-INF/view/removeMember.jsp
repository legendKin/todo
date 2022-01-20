<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container pt-5">
	<div class="container p-3 my-3 bg-dark text-white"><h1 class="text-center">회원탈퇴</h1></div>
	<form class="form-inline" method="post" action="${pageContext.request.contextPath}/member/removeMember">
		<div style=" margin: 100px 410px">
			<div>아이디</div>				
			<div>
				<input type="text" name="memberId" style="text-align:left; width:300px; height:40px; font-size:20px; padding:0 10px" value = "${loginMember.getMemberId()}" readonly>
			</div>	
			<br>					
			<div>비밀번호</div>
			<div>
				<input type="password" id="memberPw" name="memberPw" style="text-align:left; width:300px; height:40px; font-size:20px; padding:0 10px" placeholder="Enter password" value="">
			</div>								
			<div style=" margin: 50px 110px" >
				<button type="submit" class="btn btn-outline-danger">탈퇴</button>							
			</div>
			<div style=" margin: 50px 105px" >
				<a class="btn btn-outline-warning" href="${pageContext.request.contextPath}/member/calendar">나가기</a>
			</div>
		</div>
	</form>
	</div>
</body>
</html>