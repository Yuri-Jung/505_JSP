<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:39
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
<form action="session01_process.jsp" method="post">
    <label for="userId">아이디 : </label>
    <input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요"><br>
    <label for="userPw">비밀번호 : </label>
    <input type="text" id="userPw" name="userPw" placeholder="비밀번호를 입력하세요"><br>
    <button type="submit">전송</button>

</form>
</body>

</html>
