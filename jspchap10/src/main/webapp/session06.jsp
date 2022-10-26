<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h3>-------세션 유효 시간 변경 전-------</h3>
<%
  int time = session.getMaxInactiveInterval()/60;
  out.println("세션 유효 시간 : " + time + "분<br>");
%>
<br>
<h3>-----세션 유효 시간 변경 후---------</h3>
<%
  session.setMaxInactiveInterval(60 * 60); //1시간 (24*60*60)은 하루
  time = session.getMaxInactiveInterval()/60; //초로 되어있기 때문에 60으로 나눔
  out.println("세션 유효 시간 : " + time + "분<br>");
%>
</body>

</html>
