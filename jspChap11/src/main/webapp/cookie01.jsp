<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 9:40
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
<form action="cookie01_process.jsp" method="post">
    <label for="user-id">아이디 :</label>
    <input type="text" id="user-id" name="userId" placeholder="아이디를 입력해주세요"><br>
    <label for="user-pw">비밀번호 : </label>
    <input type="password" id="user-pw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
    <button type="submit">전송</button>
</form>
<a href="cookie02.jsp">쿠키확인</a>
<a href="cookie03.jsp">쿠키삭제</a>
</body>

</html>
