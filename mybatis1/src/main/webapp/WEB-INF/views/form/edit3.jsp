<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
<link rel="stylesheet" href="/common.css">
</head>
<body>
<section>
<div class="wrapper">
<div class="container">
	<form:form method="post" modelAttribute="student">
		<h1>학생 정보</h1>
		<table class="list">
			<tr>
				<th>아이디</th>
				<td><form:input path="id" readonly="true" disabled="true" /></td>
			</tr>
			<tr>
				<th>학번</th>
				<td><form:input path="studentNumber" /></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<th>학과</th>
				<td>
					<form:select path="departmentId" 
					items="${ departments }" itemLabel="departmentName" itemValue="id" />		
				</td>
			</tr>
			<tr>
				<th>학년</th>
				<td><form:input path="year" /></td>		
			</tr>
		</table>
		<button type="submit" class="btn">저장</button>
		<button type="button" class="btn" onclick="location='/' ">메인으로</button>
		
		<c:if test="${ not empty message }">
			<div class="message">
				${ message }
			</div>
		</c:if>
	</form:form>
	
</div>
</div>
</section>
</body>
</html>