<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 10:31
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
<form action="#" name="member" method="post">
  <p>아이디 : <input type="text" name="id"><button type="button">아이디 중복 검사</button> </p>
  <p>비밀번호 : <input type="password" name="passwd"></p>
  <p>이름 : <input type="text" name="name"></p>
  <p>연락처 : <select name="phone1">
<%--    아래에 쭉 나열된다.--%>
    <option value="010">010</option>
    <option value="011">011</option>
    <option value="016">016</option>
    <option value="017">017</option>
    <option value="019">019</option>
  </select> -<input type="text" maxlength="4" size="4" name="phone2"> - <input type="text" maxlength="4" size="4" name="phone3"> </p>
  <p>성별 : <input type="radio" name="gender" value="남성" checked>남성
    <input type="radio" name="gender" value="여성">여성</p>
  <p>취미 : 독서<input type="checkbox" name="hobby1" checked>
    운동 <input type="checkbox" name="hobby2">
    영화 <input type="checkbox" name="hobby3"></p>
  <p><button type="submit">가입하기</button>
    <button type="reset">다시쓰기</button> </p>
</form>
</body>

</html>
