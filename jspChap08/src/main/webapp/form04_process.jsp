<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오전 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>form 태그</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table border="1">
    <tr>
        <th>요청 파라미터 이름</th>
        <th>요청 파라미터 값</th>
    </tr>
    <%
        request.setCharacterEncoding("utf-8");

        Enumeration paramNames = request.getParameterNames();
//        넘어온 파라미터 이름들이 넘어간다. 실제 배열은 아니기 때문에 인덱스번호는 없다.

        while (paramNames.hasMoreElements()) {
//            인덱스번호가 없기 때문에 hasMoreElements로 데이터 꺼낸다.
            String name = (String)paramNames.nextElement();
//            nextElement()해야 실제 데이터 가져올 수 있따. 강제형변환 시켜야 한다.문자열타입으로 받는다.
//            String name = paramNames.nextElement().toString(); 둘 다 된다.
            out.print("<tr><td>" + name + "</td>\n");
            String paramValue = request.getParameter(name);
//            전부다 문자열로 받아 출력.
            out.print("<td>" + paramValue + "</td></tr>\n");
//            td와 tr 사용해서 값 받아서 출력
        }
    %>
</table>
</body>

</html>
