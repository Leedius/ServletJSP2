<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
	<div style="text-align: center">
		<h3>${name }회원님 가입을 환영합니다.<br>
			아래 추가 정보를 입력해주세요
		</h3>
	</div>
	<div>
	<form action="RegServlet2" method="post">
		<input value="${id }" name="id" type="hidden">
		<input value="${password }" name="password" type="hidden">
		<input value="${name }" name="name" type="hidden">
		<c:forEach items="${tell }" var="e">
		<input value="${e }" name="tell" type="hidden">
		</c:forEach>
		<input value="${email }" name="email" type="hidden">
		<input value="${date }" name="date" type="hidden">
		
		<table style="background-color: #f2f2f2; 
						margin: 0 auto; width: 500px; 	
						padding-left: 50px;
						padding-right: 50px;
						border-radius: 5px;
						padding-top: 50px;
						padding-bottom: 50px;">
			<tr>
				<td>
					<table>
						<tr>
							<td>관심 레슨</td>
							<td>
								<input type="checkbox" value="수영" name="lesson">수영 
								<input type="checkbox" value="헬스" name="lesson">헬스 
								<input type="checkbox" value="요가" name="lesson">요가 
								<input type="checkbox" value="필라테스" name="lesson">필라테스 
							</td>
						</tr>
					</table>
					<table>
						<tr>
							<td>레슨에 참여한 적 있나요</td>
							<td>
								<input type="radio" value="예" name="answer" checked>예 
								<input type="radio" value="아니오" name="answer">아니오
							</td>
						</tr>
					</table>
					<table>
						<tr	>
							<td>추천인 명</td>
							<td>
								<input type="text" name="refferal">
							</td>
						</tr>
						<tr>
							<td>자기소개</td>
							<td>
								<textarea rows="5" cols="40" name="introduce" style="resize: none"></textarea>
							</td>
						</tr>
						<tr style="text-align: center">
							<td colspan="2">
								<input type="submit" value="입력완료">
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