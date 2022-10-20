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
    <title>너의 관심분야,,,</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String tel = request.getParameter("tel");
    String name = request.getParameter("name");
    String e_mail = request.getParameter("e_mail");
    String address = request.getParameter("address");
%>

<%
    String [] like = request.getParameterValues("like");
    String likestr = "";

    if (like != null){
        for(int i = 0; i < like.length; i++){
            likestr += like[i] + " ";
        }
    }

%>
<h3>전송된 아이디 : <%=id%></h3>
<h3>전송된 비밀번호 : <%=pw%></h3>
<h3>전송된 이름 : <%=name%></h3>
<h3>전송된 전화번호 : <%=tel%></h3>
<h3>전송된 이메일주소 : <%=e_mail%></h3>
<h3>전송된 집주소 : <%=address%></h3>
<h3>관심분야 : <%=likestr%></h3>
</body>

</html>
