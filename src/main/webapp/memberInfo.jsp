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
	

	

}
tr, td{
	border: 0.5px solid silver;
}
tr{
	border:0 solid black;
}
</style>
</head>
<body>
	<div>
		<form action="RegServlet" method="post">
			<input value="${id }" name="id" type="hidden">
			<input value="${password }" name="password" type="hidden">
			<input value="${name }" name="name" type="hidden">
			<input value="${tell }" name="name" type="hidden">
			<input value="${email }" name="email" type="hidden">
			<input value="${date }" name="date" type="hidden">
		<table style="background-color: #f2f2f2;
		margin: 0 auto;
		margin-top: 100px;
		text-align: center;
		padding-left: 50px;
		padding-right: 50px;
		border-radius: 5px;
		padding-top: 50px;
		padding-bottom: 50px;
		">
			<tr style="border: none">
				<td style="border: none">
					<table style="border: none;">
						<tr>
							<td width="100" >아이디</td>
							<td width="200" >${id }</td>
							<td width="100" >이름</td>
							<td width="200" >${name }</td>
						</tr>
						<tr>
							<td>연락처</td>
							<td>
								${tell }
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
				
					<table style="margin:0 auto; border:0;">
						<tr>
							<td colspan="4" style="border: 0; ">
								<input type="submit" value="뒤로가기"> 
								<input type="button" value="회원등록" onclick="location.href='regMember.jsp'"> 
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>