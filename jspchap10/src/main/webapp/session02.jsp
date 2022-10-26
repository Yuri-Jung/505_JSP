<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:59
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
<%
//  String userId = session.getAttribute("userId").toString(); //이거하니까 오류뜸 밑에꺼로하삼.
//  String userPw = session.getAttribute("userPw").toString();

    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");

  out.println("설정된 세션의 속성 값 :" + userId + "<br>");
  out.println("설정된 세션의 속성 값 :" + userPw);
%>
</body>

</html>
