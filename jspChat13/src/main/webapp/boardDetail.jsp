<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-02
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>상세 글 읽기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        window.addEventListener('DOMContentLoaded', function () {
            const btnList = document.querySelector('#btn-list');
            btnList.addEventListener('click', function () {
                history.back();
            });
        });
    </script>
</head>
<body>
<%--<h1>글읽기 페이지</h1>--%>
<%@ include file="dbconn.jsp" %>
<%
    int seq = Integer.parseInt(request.getParameter("seq"));

    String title = "";
    String contents = "";
    String userId = "";
    String createDate = "";
    String updateDate = "";
    int boardCnt = 0;
%>

<%
    PreparedStatement pstmt = null;
    ResultSet rs = null;


    try {
//        카운트 수 늘리기
        String sql = "UPDATE board SET cnt = cnt+1 where seq = ? ";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, seq);
        pstmt.executeUpdate();

//        값 가져오기
        sql = "SELECT seq, title, contents, user_id, create_date, update_date, cnt FROM board ";
        sql += "WHERE seq = ? ";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, seq);
        rs = pstmt.executeQuery();


        if (rs.next()) {
            title = rs.getString("title");
            contents = rs.getString("contents");
            userId = rs.getString("user_id");
            createDate = rs.getString("create_date");
            updateDate = rs.getString("update_date");
            int cnt = rs.getInt("cnt");

//    out.print(title + "<br>");
//    out.print(contents + "<br>");
//    out.print(userId + "<br>");
//    out.print(createDate + "<br>");
//    out.print(updateDate + "<br>");
//    out.print(cnt);

        }
    } catch (SQLException e) {
        out.println(e.getMessage());
    } finally {
        if (rs != null) {
            rs.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>

<header class="container mt-3">
    <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-4">
            <h1 class="text-center">상세 글 읽기 페이지</h1>
        </div>
    </div>
</header>

<main class="container mt-5">
    <div class="row">
        <form action="boardUpdate_process.jsp" method="post">
            <div class="col-sm-6 mx-auto">
                <%--      <form action="boardWrite_process.jsp" method="post" class="border rounded-3 p-4">--%>

                <div class="form-floating my-3">
                    <input type="text" class="form-control" id="seq" name="seq" placeholder="글 번호를 입력하세요" readonly
                            value="<%=seq%>">
                    <label for="seq" class="form-label">Seq</label>
                </div>
                <div class="form-floating my-3">
                    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요"
                            value="<%=title%>">
                    <label for="title" class="form-label">Title</label>
                </div>
                <div class="form-floating my-3">
                    <input type="text" class="form-control" id="user-id" name="userId" placeholder="ID를 입력하세요" disabled
                            value="<%=userId%>">
                    <%--          disable과 readonly는 둘 다 수정 불가하지만 disable은 바탕색 바뀜--%>
                    <label for="user-id" class="form-label">ID</label>
                </div>
                <div class="form-floating my-3">
                    <input type="text" input class="form-control" id="create-date" name="createDate" rows="10"
                            placeholder="날짜를 입력하세요" readonly
                            value="<%=createDate%>">
                    <label for="create-date" class="form-label">Date</label>
                </div>
                <div class="form-floating my-3">
                    <input type="text" class="form-control" id="board-cnt" name="boardCnt" rows="10"
                            placeholder="조회수를 입력하세요" readonly
                            value="<%=boardCnt%>">
                    <label for="board-cnt" class="form-label">Count</label>
                </div>
                <div class="form-floating my-3">
                    <input type="text" class="form-control" id="contents" name="contents" rows="10"
                            placeholder="내용을 입력하세요"
                            value="<%=contents%>">
                    <label for="contents" class="contents">Contents...</label>
                </div>

                <div class="my-3 row">
                    <div class="col-sm">
                        <button class="btn btn-secondary" type="button" id="btn-list">목록으로</button>
                    </div>
                    <div class="col-sm d-flex justify-content-end">

                        <%--                    <input type="hidden" name="seq" value="<%=seq%>">--%>
                        <%--                    <input type="hidden" name="title" value="<%=title%>">--%>
                        <%--                    <input type="hidden" name="contents" value="<%=contents%>">--%>
                        <%--                    이거를 안했더니 안됨. 주석처리됨.--%>
                        <button class="btn btn-warning me-2" type="submit">수정</button>
        </form>
        <%--              margin end2--%>
        <form action="boardDelete_process.jsp" method="get">
            <input type="hidden" name="seq" value="<%=seq%>">
            <%--                  get방식이니까 => ?seq = <%=seq%>--%>
            <button class="btn btn-danger" type="submit" id="btn-back">삭제</button>

        </form>
    </div>
    </div>
    </div>
    </div>
</main>


</body>

</html>
