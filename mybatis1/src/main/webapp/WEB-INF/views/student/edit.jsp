<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${R}common.js"></script>
<link rel="stylesheet" href="${R}common.css">
<title>∙ 학생 ${ student.id > 0 ? "수정" : "등록" } ∙</title>
</head>
<body>
<section>
<div class="wrapper">
<div class="container">
	<form:form method="post" modelAttribute="student">
		<h1>∙ 학생 ${ student.id > 0 ? "수정" : "등록" } ∙</h1>
		<table class="list">
			<tr>
				<td>학번</td>
				<td><form:input path="studentNumber" /></td>
			</tr>	
			<tr>
				<td>이름</td>
				<td><form:input path="name" /></td>
			</tr>	
			<tr>
				<td>학과</td>
				<td><form:select path="departmentId"
				itemValue="id" itemLabel="departmentName" items="${ departments }" /></td>
			</tr>	
			<tr>
				<td>학년</td>
				<td><form:input path="year" /></td>
			</tr>	
		</table>
		<button type="submit" class="btn">저장</button>
		<c:if test="${ student.id > 0 }">
		<button type="button" onclick="location='delete?id=${ student.id }' " 
		class="btn" data-confirm-delete>삭제</button>
		</c:if>
	</form:form>

</div>
</div>
</section>
</body>
</html>