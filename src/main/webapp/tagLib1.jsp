<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- if문 -->
<!-- test : 참 또는 거짓 -->
<c:if test="${1 < 3 }">
	참입니다.
</c:if><br>

<!-- 10이 5보다 크고 7이 8보다 작으면.. -->
<!-- c태그는 자바언어로 해석되기 때문에 c태그 안에서의 주석 사용 시 주의! -->
<c:if test="${10 > 5 and 7 < 8 }">
<%-- c태그 주석 --%>
</c:if>

<!-- for문 -->
<!-- begin부터 end까지 1씩 증가하면서 반복실행 -->
<c:forEach begin="1" end="5">
	java
</c:forEach>
<br>
<!-- begin부터 end까지 2씩 증가하면서 반복실행 -->
<c:forEach begin="1" end="10" step="2">
	java	
</c:forEach>
<!-- items : 반복을 돌릴 객체.
	 var : 하나씩 뺏을 때 이름 -->
<c:forEach items="${tell }" var="e">
	${e }
</c:forEach>
</body>
</html>