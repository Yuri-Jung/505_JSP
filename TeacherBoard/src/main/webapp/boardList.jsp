<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-04
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>목록페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%@ include file="header.jsp"%>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String query = "SELECT idx, title, user_id, create_dt, hit_cnt from t_board2 ";
    query += "WHERE deleted_yn = 'N' " ;
    query += "ORDER BY idx DESC " ;

%>

<main class="container mt-5">
    <div class="row">
        <div class="col-sm">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>글번호</th>
                    <th>글제목</th>
                    <th>글쓴이</th>
                    <th>등록시간</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        conn = DriverManager.getConnection(url, uid, upw);
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(query);

                        while (rs.next()) {
                            int idx = rs.getInt("idx");
                            String title = rs.getString("title");
                            String userId = rs.getString("user_id");
                            String createDt = rs.getString("create_dt");
                            int hitCnt = rs.getInt("hit_cnt");
//                            이렇게하면 리스트 목록 화면에 나타난다.
                %>
                    <tr>
                        <td><%=idx%></td>
                        <td><a class="text-decoration-none" href="boardDetail.jsp?idx=<%=idx%>"> <%=title%></a></td>
                        <td><%=userId%></td>
                        <td><%=createDt%></td>
                        <td><%=hitCnt%></td>
                    </tr>
                <%
                        }
                    }
                    catch (SQLException e) {
                        out.print("SQLException :" +e.getMessage());
                    }
                    finally {
                        if (rs != null) {rs.close();}
                        if (conn != null) {conn.close();}
                        if (stmt != null) {stmt.close();}
                    }
                %>
                </tbody>
            </table>
            <div class="d-flex justify-content-end">
                <a href="boardWrite.jsp" class="btn btn-primary">글쓰기</a>
            </div>
        </div>
    </div>
</main>
<%@ include file="footer.jsp"%>
</body>

</html>
