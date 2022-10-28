<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-28
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>db사용하기 - Statement(select)</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="dbconn.jsp"%>
<div class="container mt-6 mx-auto" >
  <div class="row">
    <div class="col-sm">
      <table class="table table-hover table-striped">
        <thread>
          <tr>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>이름</th>
          </tr>
        </thread>
        <tbody>
          <%
            ResultSet rs = null;
            Statement stmt = null;
            try{
              String sql = "SELECT * FROM member "; //반드시 한 칸 띄워야
              stmt = conn.createStatement();
              rs = stmt.executeQuery(sql); //rs에 집어넣음 격자무늬 이차원형태로 저장중

              while (rs.next()){ //다음부분 데이터가 있으면 true / false
//                dbconn과 동일한 변수 사용시 오류 발생.
                String userId = rs.getString("id");
                String userPw = rs.getString("passwd");
                String userNm = rs.getString("name");

//       out.println("<tr><td>" + userId + "</td><td>" + userPw + "</td><td>"+...이렇게하기는 너무 귀찮으니까
            %>

            <tr>
              <td><%=userId%></td>
              <td><%=userPw%></td>
              <td><%=userNm%></td>
            </tr>
          <%

              }
            }
            catch (SQLException e){
              out.println("member 테이블 데이터 조회가 실패했습니다.");
              out.println("SQLException : " + e.getMessage());
            }
            finally {
              if(rs != null){rs.close();}
              if (stmt != null){stmt.close();}
              if(conn != null){conn.close();}
            }
            %>
        </tbody>
      </table>
    </div>
  </div>
</div>
</table>
</body>

</html>
