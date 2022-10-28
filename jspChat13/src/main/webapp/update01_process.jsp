<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오전 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>db사용하기 - statement(update)</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="dbconn.jsp"%>

<%
  request.setCharacterEncoding("utf-8");

  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
  String userNm = request.getParameter("userName"); //name 값 넣음

  Statement stmt = null;
  ResultSet rs = null;

  try{
    String sql = "SELECT id, passwd FROM member ";
    sql += "WHERE id = '" + userId + "' ";

//    Statement 객체 생성
    stmt = conn.createStatement();
//    Statement로 db에 쿼리를 전송, 결과값을 resultset으로 받아옴
    rs = stmt.executeQuery(sql);


    if (rs.next()) {
      String rid = rs.getString("id");
      String rpw = rs.getString("passwd");

//      사용자가 입력한 비밀번호와 db에 저장된 비밀번호가 같은지 확인. 앞의 건 무조건 true. 아이디로 받아왔으니까.
      if (userId.equals(rid) && userPw.equals(rpw)){ //입력한 거 저장된거 비교(이순서다)
        sql = "UPDATE member SET name = '" + userNm + "' ";
        sql += "WHERE id = '" + userId + "' "; //where안넣으면 전체 다 바뀜

//        Statement 객체를 새로 생성
        stmt = conn.createStatement(); //createStatement : statement 객체가 새로 생긴다.
//        db 서버로 쿼리 전송
        stmt.executeUpdate(sql);
        out.println("member 테이블의 데이터를 수정하였습니다.");
      }
      else {
        out.println("비밀번호가 틀렸습니다.");
      }
    }
//    위에 if문 2개 끝난거임
    else {
      out.println("일치하는 사용자가 없습니다.");
    }
  }
  catch (SQLException e){
      out.println("SQLException : " + e.getMessage());
  }
  finally {
      if(rs != null){rs.close();} // 다 삭제 시켜줌.
      if(stmt != null){stmt.close();}
      if(conn != null){conn.close();}
  }

%>
</body>

</html>
