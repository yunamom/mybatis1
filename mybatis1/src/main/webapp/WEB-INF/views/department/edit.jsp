<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>∙ 학과 정보 ∙</title>
<link rel="stylesheet" type="text/css" href="/common.css" />
</head>
<body>

<div class="wrapper">
<div class="container">
	<h1>∙ 학과 정보 ∙</h1>
	<form method="post">
		<table class="list">
			<tr>
				<th>아이디</th>
				<td><input type="text" value="${ department.id }" readonly disabled /></td>
			</tr>
			<tr>
				<th>학과명</th>
				<td><input type="text" name="departmentName" value="${ department.departmentName }" /></td>
			</tr>
		</table>
		<button type="submit" class="btn">저장</button>
		<button type="button" class="btn" onclick="location='list'">취소</button>
	</form>
</div>
</div>

</body>
</html>