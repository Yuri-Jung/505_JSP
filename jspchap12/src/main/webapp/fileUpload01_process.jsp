<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-27
  Time: 오전 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
    <title>파일업로드</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
  String fileUploadPath = "C:\\java505\\upload";
//  파일 올라갈위치 지정
    DiskFileUpload upload = new DiskFileUpload();
    List items = upload.parseRequest(request);
//    반복 가능한 객체로 생성
//    List는 java.util로 클래스 가져온다.
    Iterator params = items.iterator();
//    hasNext() 다음 데이터가 존재하는지 확인
    while (params.hasNext()) {
//        next() 다음 데이터를 가져옴 밑에는 (fileitme)으로 가져옴.
        FileItem fileItem = (FileItem) params.next();
//  isFormFiled가 맞는지 확인
        if(!fileItem.isFormField()) {
            String fileName = fileItem.getName(); //파일객체의 이름 가져옴
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1); //lastIndexOf제일 뒤에서 \\가 두 개있는거 확인하고 가져옴
            File file = new File(fileUploadPath+"/"+ fileName);//fileUploadPath(서버에 저장할 경로이름)까지 가져오고 0번 부터 가져옴. 전체경로.
            fileItem.write(file); //write를 써야 실제 파일 저장한다.
        }
    }
%>
</body>

</html>
