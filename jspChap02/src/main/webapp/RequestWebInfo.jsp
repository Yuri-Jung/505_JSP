<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오후 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>내장 객체 - request</title>
</head>
<body>
<h2>1.클라이언트와 서버의 환경정보 읽기</h2>
<ul>
<%--  get, post 방식--%>
<%--  get : 웹브라우저의 주소창에 데이터를 함께 전송하는 방식(주소로 보낸다), 속도빠름--%>
<%--  post : 데이터를 웹페이지의 body에 저장하여 전송하는 방식(바디에 넣어서 전송), 속도 상대적으로 느림--%>


  <li>데이터 전송 방식: <%=request.getMethod()%> </li>

  <%--  URL : 전체주소--%>
  <%--  URI : resource의 주소--%>
  <li>URL : <%=request.getRequestURL()%></li>
  <li>URL : <%=request.getRequestURI()%></li>

<%--  통신 규약 종류--%>
  <li>프로토콜 : <%=request.getProtocol()%></li>

<%--  getServerName() : 현재 접속한 서버의 이름을 알려줌--%>
  <li>서버명 : <%=request.getServerName()%></li>

<%--  getServerPort : 현재 접속한 서버의 포트 번호를 알려줌--%>
  <li>서버 포트 : <%=request.getServerPort()%></li>

<%--  getRemoteAddr : 접속한 클라이언트의 ip주소를 알려줌---%>
  <li>클라이언트 IP  주소 : <%=request.getRemoteAddr()%></li>

<%--  getQueryString : get방식으로 접속 시 주소 뒤에 추가된 데이터 부분을 의미--%>
  <li>쿼리스트링 : <%=request.getQueryString()%></li>

<%--  여기가 중요하다!! getParameter(String name), getParameterValues(String name) 많이 사용함.--%>
<%--  !!!!중요!!! 여기서 name이란?getParameter()를 통해서 전송된 데이터의 이름(변수명)은 html의 input태그에 설정한 name 속성값!!!--%>
<%--  getParameter : 클라이언트에서 서버로 전송한 데이터 가져오기 --%>
<%--  getParameter(String name) : client가 전송한 이름이 name인 데이터를 가져옴--%>
<%--  getParameterValues(String name) : client가 전송한 이름이 name인 배열형태의 데이터를 가져옴--%>
<%--  getParameterNames() : client가 전송한 모든 데이터를 Enumeration 객체 타입으로 가져옴--%>
<%--  getParameterMap() : client가 전송한 모든 데이터를 HashMap 방식으로 가져옴--%>
  <li>전송된 값1 : <%=request.getParameter("eng")%></li>
  <li>전송된 값2 : <%=request.getParameter("kor")%></li>
<%--  input태그에 kor이 되어있고, 이 데이터에 대한 이름이 kor로 되어있는 이 전체에 대한 값이 잘가라고 뜬다.--%>
</ul>

</body>

</html>
