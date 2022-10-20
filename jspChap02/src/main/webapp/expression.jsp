<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>스크립팅 태그, 표현식</title>
</head>
<body>
<p>Todays date : <%= new java.util.Date()%></p>
<%--직접 값을 출력해도 되고--%>
<%!
    int div(int a, int b){ //변수 선언하는 형태로 해도 되고.
        return a - b;
    }
%>
<%
    int a = 10;
    int b = 20;
    int c = 30;
%>

<%= a + b + c%>
<p>10 - 3 = <%= div (10,3) %></p>
<p>변수 바로 출력 : <%=c%></p>
</body>

</html>
