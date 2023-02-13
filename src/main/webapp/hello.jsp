<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 이동 할 페이지명에 확장자가 붙어있지 않으면 -->
<!-- 이동하고자하는 입력 값과 똑같은 이름의 servlet으로 이동한다. -->
<!-- 페이지가 이동되어 servlet이 실행되면 doGet(), doPost() -->
<!-- 메소드 중 하나가 실행된다. -->
<!-- form 태그의 method 속성값이 post일 경우에만 doPost()가 실행되고 -->
<!-- 이 외에는 무조건 doGet() 메소드가 실행. -->
<a href="HelloServlet">페이지 이동</a>

<!-- form태그 안에 method가 post가 아닐때는 두개 실행된다 -->
<form action="HelloServlet" method="get" >
	<input type="submit" value="페이지 이동">
</form>
</body>
</html>