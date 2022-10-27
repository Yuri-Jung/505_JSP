<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>내가 만든 쿠키222222</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    out.println("현재 설정된 쿠키의 개수=>" + cookies.length +"<br>");
    out.println("----------------------------<br>");

    for(int i=0; i< cookies.length; i++){
    out.println("설정된 쿠키의 속성이름[" + i + "]" + cookies[i].getName() +  "<br>");
    out.println("설정된 쿠키의 속성 값 [" + i + "]" + cookies[i].getValue() +"<br>");
    out.println("----------------------------<br>");
    }
%>
</body>

</html>
