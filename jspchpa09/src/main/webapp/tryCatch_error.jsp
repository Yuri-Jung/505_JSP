<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<p>잘못된 데이터가 입력되었습니다.</p>
<p><%="숫자1 : " + request.getParameter("num1")%></p>
<p><%="숫자2 : " + request.getParameter("num2")%></p>
</body>
<%--try catch가 web.xml보다 우선 순위 높다.--%>
<%--1.try catch--%>
<%--2.errorpage--%>
<%--3.web.xml--%>
<%--같이 적혀져 있을 경우 차례대로 우선순위가 높다.--%>

</html>
