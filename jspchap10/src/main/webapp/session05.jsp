<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h3>----세션 삭제 전------</h3>
  <%
    String userId = (String) session.getAttribute("userId");
    String userPw = (String) session.getAttribute("userPw");
    out.print("설정된 세션 이름 userId : " + userId + "<br>");
    out.print("설정된 세션 값 userPw : " + userPw + "<br>");

    if(request.isRequestedSessionIdValid()==true){
      out.print("세션이 유효합니다.");
    }
    else{
      out.println("세션이 유효하지 않습니다.");
    }

    out.print("세션id : " + session.getId());

    session.invalidate();
  %>
<br>
<h3>-------세션 삭제 후--------</h3>
<%
  if(request.isRequestedSessionIdValid()==true){
    out.print("세션이 유효합니다.");
  }
  else{
    out.print("세션이 유효하지 않습니다.");
  }

  out.print("세션id : " + session.getId()); //세션삭제
//매번 접속할 때 마다 아이디 바뀜.
%>
</body>
<%--세션1, 3 오류오류.--%>
</html>
