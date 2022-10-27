<%--
    Created by IntelliJ IDEA.
    User: admin
    Date: 2022-10-27
    Time: 오전 9:45
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>내가 만든 쿠키</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    if(userId.equals("admin") && userPw.equals("1234")){
        Cookie cookieId = new Cookie("userId",userId);
        Cookie cookiePw = new Cookie("userPw", userPw);

        response.addCookie(cookieId);
        response.addCookie(cookiePw);

        out.println("쿠기 생성이 성공하였습니다.");
        out.println(userId + "님 환영합니다.");
    }
    else{
        out.println("쿠키생성이 실패하였습니다.");
    }
%>
<a href="cookie01.jsp">쿠키확인</a>
<a href="cookie02.jsp">쿠키상태</a>
<a href="cookie03.jsp">쿠키삭제</a>
</body>

</html>
