<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:03
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
<%
  try{
    String num1 = request.getParameter("num1"); //데이터 여기로 넘어온다.request에 실려서
    String num2 = request.getParameter("num2");
    int a = Integer.parseInt(num1);
    int b = Integer.parseInt(num2);
    int c = a/b;
    out.print(num1 + "/" + num2 + "/" + c);
  }
  catch(Exception e){ //이걸로해야 제대로 발동.
//      RequestDispatcher : 클라이언트에서 최초로 들어온 요청을 jsp/Servlet 내에서 원하는 곳으로 요청을 넘기고
//      처리 결과를 받아오는 클래스
//      forward는 화면이동한다.
//      이동할 페이지를 설정
    RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp"); //모든 요청을 trycatcherror로 넘긴다.(다같이)
//      설정된 페이지로 이동. 뒤에 내장객체 2개 달고간다.
    dispatcher.forward(request,response);
  }

%>
</body>

</html>
