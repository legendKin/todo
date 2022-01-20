<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
		<div class="container">
			<c:forEach var="n" items="${noticeList}">
				<h1>공지사항 수정</h1>
				<form method="post" action="${pageContext.request.contextPath}/admin/adminUpdateNotice">
					<input type="hidden" name="noticeNo" value="${n.noticeNo}">
					<table class="table table-borderless text-center">
						<tr>
							<td>제목:</td>
							<td><input type="text" name="noticeTitle" value="${n.noticeTitle}"></td>
						</tr>
						<tr>
							<td>내용:</td>
							<td><textarea rows="3" cols="50" name="noticeContent">${n.noticeContent}</textarea>
							</td>
						</tr>
					</table>
					<button type="submit" class="btn btn-outline-primary">수정</button>
				</form>
			</c:forEach>
		</div>
	</div>
</body>
</html>