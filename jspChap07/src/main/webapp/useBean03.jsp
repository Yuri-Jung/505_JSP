<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>액션태그 </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<jsp:useBean id="person" class="com.bitc.jspchap07.Person" scope="request"></jsp:useBean>
<p>아이디 : <%=person.getId()%></p>
<p>이름 : <%=person.getName()%></p>
<%--bean04의 이순신 데이터를 같이 실행--%>
<%--page : 현재 페이지(이걸 가장 많이 사용함.)--%>
<%--request : 요청한 페이지--%>
<%--session : 세션 정보가 남아있을 때까지--%>
<%--application : 웹 정보가 있다가 사라질 때 까지/--%>
</body>

</html>
