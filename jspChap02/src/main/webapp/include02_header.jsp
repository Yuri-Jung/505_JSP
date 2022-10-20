<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-20
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%!
    int pageCount = 0;

    void addCount(){
        pageCount ++;
    }
%>
<%--위에 꺼. 멤버 변수, 멤버 메서드--%>
<%--<%!는 선언부이다. 사용할 멤버변수나 메서드를 선언한다. 서블릿 변환시 _jspService()메서드 외부에 선언됨.--%>

<%
    addCount();
%>

<p>이 페이지 방문은 <%=pageCount%>번째 입니다.</p>