<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
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
//    String userNm = request.getParameter("userName");

    Statement stmt = null;
    ResultSet rs = null;

    try {
        String sql = "SELECT id, passwd FROM member ";
        sql += "WHERE id = '" + userId + "' ";

        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql); //객체 생성해주고 sql문 넣어주기

        if (rs.next()) {
            String rid = rs.getString("id");
            String rpw = rs.getString("passwd");


            if (userId.equals(rid) && userPw.equals(rpw)){
                sql = "DELETE FROM member " ;
                sql += "WHERE id = '" + userId + "' ";

                stmt = conn.createStatement();
                stmt.executeUpdate(sql);
                out.println("member 테이블의 데이터를 삭제했습니다.");
            }
            else {
                out.println("비밀번호가 틀렸습니다.");
            }
        }
        else{
            out.println("일치하는 사용자가 없습니다.");
        }
    }
    catch (SQLException e){
        out.println("SQLException : " + e.getMessage());
    }
    finally {
        if(rs != null){rs.close();}
        if(conn != null) {conn.close();}
        if(stmt != null){stmt.close();}
    }
%>
</body>

</html>
