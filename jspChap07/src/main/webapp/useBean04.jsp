<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 3:28
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
<%--person의 객체 생성--%>
<jsp:useBean id="person" class="com.bitc.jspchap07.Person" scope="request"></jsp:useBean>
<p>아이디 : <%=person.getId()%></p>
<p>이름 : <%=person.getName()%></p>
<%
    person.setId(20221121);
    person.setName("이순신");
%>
<jsp:include page="useBean03.jsp"></jsp:include>
</body>

</html>
