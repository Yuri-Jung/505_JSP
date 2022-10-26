<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 2:54
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
<div class="container mt-5">
  <div class="row">
    <div class="col-sm-6 mx-auto">
        <jsp:include page="param02_data.jsp">
        <jsp:param name="title" value='<%=java.net.URLEncoder.encode("오늘의 날짜와 시각","UTF-8")%>'/>
        <jsp:param name="date" value='<%=new java.util.Date()%>'/>
      </jsp:include>
    </div>
  </div>
</div>
</body>
</html>
