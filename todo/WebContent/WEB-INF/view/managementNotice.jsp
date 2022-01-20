<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container pt-5 text-center">
	<div>
		<!-- include:st -->
		<jsp:include page="/WEB-INF/view/partial/adminInclude.jsp"></jsp:include>
	</div>
	<!-- include:end -->
	<h1>공지사항 관리</h1>
	<div class="container mt-3">
		<table class="table table-bordered text-center">
			<tr>
				<th>제목</th>
				<th>내용</th>
				<th>작성일</th>
				<th>수정날짜</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="v" items="${noticeList}">
				<tr>
					<td>${v.noticeTitle}</td>
					<td>${v.noticeContent}</td>
					<td>${v.createDate}</td>
					<td>${v.updateDate}</td>
					<td><a class="btn btn-outline-success" href="${pageContext.request.contextPath}/admin/adminUpdateNotice?noticeNo=${v.noticeNo}">수정</a></td>
					<td><a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/admin/adminDeleteNotice?noticeNo=${v.noticeNo}">삭제</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<form method="post" action="${pageContext.request.contextPath}/admin/adminAddNotice">
		<table>
			<tr>
				<td>제목:</td>
				<td><input type="text" size="48" name="noticeTitle"></td>
			</tr>
			<tr>
				<td>내용: &nbsp;</td>
				<td><textarea rows="3" cols="50" name="noticeContent"></textarea>
				</td>
			</tr>
		</table>
		<button type="submit" class="btn btn-outline-primary">추가</button>
	</form>
</div>
</body>
</html>