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
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#btn-back').on('click', function () {
                history.back();
            });
        });

    </script>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    int idx = Integer.parseInt(request.getParameter("idx"));
    String title = "";
    String contents = "";
    String userId = "";
    int hitCnt = 0;
    String createDt = "";
    String updateDt = "";
%>

<%@ include file="header.jsp"%>
<%@ include file="dbconn.jsp"%>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    String query = "SELECT idx, title, contents ,user_id, create_dt, hit_cnt, deleted_yn, update_dt from t_board2 WHERE deleted_yn = \"N\"\n" +
            "order by idx desc " ;

    try {
        conn = DriverManager.getConnection(url, uid, upw);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);

        if (rs.next()) {
            idx = rs.getInt("idx");
            title = rs.getString("title");
            contents = rs.getString("contents");
            userId = rs.getString("user_id");
            createDt = rs.getString("create_dt");
            updateDt = rs.getString("update_dt");
            hitCnt = rs.getInt("hit_cnt");

        }
    }
    catch (SQLException e ){
        out.print(e.getMessage());
    }
    finally {
        if (rs != null) {rs.close();}
        if (conn != null) {conn.close();}
        if (stmt != null) {stmt.close();}
    }
%>
<main class="container mt-5">
    <div class="row">
        <div class="col-sm">
<%--            제목--%>
            <div class="row my-3">
                <div class="col-sm">
                    <label for="title" class="form-label">제목 : </label>
                    <input type="text" class="form-control" id="title" name="title" value="<%=title%>">
                </div>
            </div>
            <div class="row my-3">
<%--            아이디--%>
            <div class="col-sm">
                <label for="user-id" class="form-label">아이디 : </label>
                <input type="text" class="form-control" id="user-id" name="userId" value="<%=userId%>">
            </div>
<%--            조회수--%>
            <div class="col-sm">
                <label for="hit-cnt" class="form-label">조회수 : </label>
                <input type="text" class="form-control text-end" id="hit-cnt" name="hitCnt" value="<%=hitCnt%>">
            </div>

<%--            등록날짜--%>
        <div class="col-sm">
        <label for="create-dt" class="form-label">등록날짜</label>
        <input type="text" class="form-control text-end" id="create-dt" name="createDt" value="<%=createDt%>">
        </div>
        </div>

        <div class="row my-3">
<%--        글내용--%>
        <div class="col-sm">
            <label for="contents" class="form-label">내용 : </label>
            <textarea class="form-control" rows="10" id="contents" name="contents" value="<%=contents%>"></textarea>
        </div>
    </div>
    <div class="row my-3">
        <div class="col-sm">
            <button type="button" class="btn btn-secondary" id="btn-back">목록으로</button>
<%--            button은 기본적으로 submit이 디폴트다. 타입설정 필요. 내맘대로 하고 싶다면--%>
        </div>
        <div class="col-sm d-flex justify-content-end">
            <a href="boardUpdate.jsp?idx=<%=idx%>" class="btn btn-warning me-2" id="btn-update">수정하기</a>
            <a href="boardDelete.jsp?idx=<%=idx%>" class="btn btn-danger" id="btn-delete">삭제하기</a>
        </div>
        </div>
        </div>
    </div>
</main>


<%@ include file="footer.jsp"%>
</body>

</html>
