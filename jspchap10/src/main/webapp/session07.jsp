<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 4:04
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
<br><br>
<form action="session07_process.jsp" method="post">
  <label for="user-name">이름 : </label>
  <input type="text" id="user-name" name="userName" placeholder="이름을 입력하세요"><br>
  <label for="user-email">이메일 : </label>
  <input type="email" id="user-email" name="userEmail" placeholder="이메일을 입력하세요"><br>
  <label for="user-phone">전화번호 : </label>
  <input type="text" id="user-phone" name="userPhone" placeholder="전화번호를 입력하세요"><br>
  <button type="submit">전송</button>
    <br>
    <a href="session07_result.jsp" alt="">확인 페이지로</a>
</form>


</body>

</html>
