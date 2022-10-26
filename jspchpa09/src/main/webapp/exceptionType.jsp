<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 12:39
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
<form action="exceptionType_process.jsp" method="post">
  <label for="num1">숫자1 : </label><br>
  <input type="text" id="num1" name="num1"><br>
  <label for="num2"> 숫자: </label>
  <input type="text" id="num2" name="num2"><br>
    <label for="num3">1~5</label>
    <input type="text" id="num3" name="num3"><br>
  <button type="submit">나누기</button>
</form>
</body>

</html>
