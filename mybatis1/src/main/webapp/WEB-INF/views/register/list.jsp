<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/common.css">
<title>∙ 수강목록 ∙</title>
</head>
<body>
<section>
<div class="wrapper">
<div class="container">

<h1><a href="/">∙ 수강목록 ∙</a></h1>
<table class="list">
	<tr>
		<th>id</th>
		<th>신청일</th>
		<th>학번</th>
		<th>이름</th>
		<th>강좌id</th>
		<th>강좌명</th>
		<th>학점</th>
		<th>점수</th>
	</tr>
	<c:forEach var="register" items="${ registers }">
	<tr>
		<td>${ register.id }</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ register.createDate }" /></td>
		<td>${ register.studentNumber }</td>
		<td>${ register.studentName}</td>
		<td>${ register.courseId}</td>
		<td>${ register.courseName}</td>
		<td>${ register.unit}</td>
		<td>${ register.grade}</td>
	</tr>
	</c:forEach>
</table>

</div>
</div>
</section>
</body>
</html>