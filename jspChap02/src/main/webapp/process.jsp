<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>내장객체 request</title>
</head>
<body>
<%
//   한글이 깨질 경우 추가. 이거 안넣으면 한글 다깨져서 출력됨.
    request.setCharacterEncoding("UTF-8");
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
%>
<h3>전송된 이름 : <%=userName%></h3>
<h3>전송된 id : <%=userId%>></h3>
</body>

</html>
