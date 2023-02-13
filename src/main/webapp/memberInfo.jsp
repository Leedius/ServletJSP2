<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: solid 1px black; 
	border-collapse: collapse;
	height: 300px;
	margin: 0 auto;
	margin-top: 100px;
	text-align: center;

}
tr, td{
	border: solid 1px black; 
}
tr{
	border:0 solid black;
}
</style>
</head>
<body>
	<div>
		<table>
			<tr>
				<td width="100" >아이디</td>
				<td width="200" >${id }</td>
				<td width="100" >이름</td>
				<td width="200" >${name }</td>
			</tr>
			<tr>
				<td>연락처</td>
				<td>
					<c:forEach items="${tell }" var="e">
						${e }
					</c:forEach>
					<br>
				</td>
				<td>이메일</td>
				<td>${email }</td>
			</tr>
			<tr>
				<td>생일</td>
				<td>${date }</td>
				<td>추천인명</td>
				<td>${refferal }</td>
			</tr>
			<tr>
				<td>관심레슨</td>
				<td colspan="3" style="text-align: left;">
					<c:forEach items="${lesson }" var="e">
						${e }
					</c:forEach>
					<br>
				</td>
			</tr>
			<tr>
				<td height="100" style="vertical-align: top;">자기소개</td>
				<td colspan="3" style="vertical-align: top; text-align: left;">${introduce }</td>
			</tr>
			</table>
		<table style=" margin-top: 0; height: 50px; border:0">
			<tr>
				<td colspan="4" style="border: 0;">
					<input type="button" value="뒤로가기" onclick="location.href='regMemberDetail.jsp'"> 
					<input type="button" value="회원등록" onclick="location.href='regMember.jsp'"> 
				</td>
			</tr>
		</table>
		
	</div>
</body>
</html>