<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="memberProcess.jsp" method="post">
id : <input type="text" name="id" value=""><br>
비밀번호 : <input type="text" name="pw" value=""><br>
이름 : <input type="text" name="name" value=""><br>
전화번호 : <input type="text" name="tel" value=""><br>
e-mail : <input type="text" name="e_mail" value=""><br>
address : <input type = "text" name="address" value=""><br>
관심분야 :
<input type="checkbox" name="like" value="ham">햄버거
<input type="checkbox" name="like" value="su">스시
<input type="checkbox" name="like" value="pi">피자
<input type="checkbox" name="like" value="be">고기
<input type="checkbox" name="like" value="ma">마라탕<br>

<input type="submit" value="전송하기">
</form>
</body>

</html>
