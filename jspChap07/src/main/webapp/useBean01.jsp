<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container mt-5 mx-auto">
<%--        <%--%>
<%--            Date date = new Date();--%>
<%--        %> 원래는 이런 식으로 new 사용해서 선언해야하는데 beans사용하면 안 그래도 된다.--%>
        <jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
        <p><%
            out.print("오늘의 날짜 및 시간");
        %></p>
        <p><%=date%></p>
<%--        <p><%=new java.util.Date()%></p>이렇게 new 사용했어야 했음.--%>
    </div>
</body>

</html>
