<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-21
  Time: 오후 2:05
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
    String userName = request.getParameter("name");
%>

<div class="container mt-5" >
    <div class="row">
        <div class="col-sm-4">
            <div class="d-grid border rounded-2 p-3">
                <div>
                    <label class="form-label">아이디 : </label>
                    <input type="text" class="form-control" id="user-id" readonly value='<%=request.getParameter("id")%>'>
                </div>
                <div>
                    <label class="form-label" for="user-name">이름: </label>
                    <input type="text" class="form-control-plaintext" id="user-name" readonly value='<%=java.net.URLDecoder.decode(userName,"utf-8")%>'>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
