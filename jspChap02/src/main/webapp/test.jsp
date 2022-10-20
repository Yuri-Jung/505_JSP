<%--
    Created by IntelliJ IDEA.
    User: admin
    Date: 2022-10-20
    Time: 오전 9:28
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8" errorPage="page_errorPage.jsp" %>
<%--buffer : 한 페이지에 저장할 수 있는 데이터 수--%>
<%@ page import = "java.util.Date"%>
<%--자바에서는 소스 맨위에 import문 넣듯이 jsp에서는 이렇게 넣는다.--%>
<%!
    String str1 = "jsp";
    String str2 = "안녕하세요";
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h2>처음 만들어보는 <%=str1%></h2> 스크립트요소(표현식)
<p>
    <%
    out.println(str2 + str1 + "입니다. 열공합시다.");
    %>
</p>
<p>Today is <%=new Date()%></p>
<%--월,일, 초까지 다 나온다.--%>
<%
    String str = null;
    out.println(str.toString());
%>
</body>
</html>
