<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-11-04
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%--로딩해서 얹혀줄꺼임--%>
<%--                이 줄 추가함 각 페이지 열릴 때마다 다르게 표시하기 위해서 getServletPath 현재 열고 있는 파일명 알려줌
맨 위에 둥둥 떠다니고 있다.--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

            <%
                String fileName = request.getServletPath();
                fileName = fileName.substring(1);
//                out.println(fileName);
                String boardTitle = " ";

                switch (fileName) {
                    case "boardList.jsp":
                        boardTitle = "게시판 목록 페이지";
                        break;

                    case "boardDetail.jsp":
                        boardTitle = "상세 글 확인 페이지";
                        break;

                    case "boardWrite.jsp":
                        boardTitle = "글 등록 페이지";
                        break;

                    case "boardUpdate.jsp":
                        boardTitle = "글 수정 페이지";
                        break;

                    case "boardDelete.jsp":
                        boardTitle = "글 삭제 페이지";
                        break;
                }
            %>
<header class="container mt-3">
    <div class="p-5 mb-4 bg-light rounded-3">
        <div class="container-fluid py-4">
            <h1><%=boardTitle%></h1>
<%--            <h1 class="text-center">header</h1>--%>
        </div>
    </div>
</header>