<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	background-color:#f2f2f2;
	width: 500px;
	margin: 0 auto;
	padding-left: 50px;
	padding-right: 50px;
	border-radius: 5px;
	padding-top: 50px;
	padding-bottom: 50px;
}
</style>
</head>
<body>
	<div style="text-align: center">
		<h2>회원 등록 화면</h2>
	</div>
	<div>
	<form action="RegServlet" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="id">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="password">
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>
					<select name="tell">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="012">012</option>
					</select>
						<input type="text" name="tell" style="width: 50px">
						<input type="text" name="tell" style="width: 50px">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="email" name="email">
				</td>
			</tr>
			<tr>
				<td>생일</td>
				<td>
					<input type="date" name="date">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>