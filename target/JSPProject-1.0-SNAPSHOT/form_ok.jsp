<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birthday = request.getParameter("birthday");
    String grade = request.getParameter("grade");
    String subject[] = request.getParameterValues("subject");
    String str = "";
    for (int i = 0; i < subject.length; i++) {
        str += subject[i];
        if (i != subject.length - 1) str += ", ";
    }
    String message = request.getParameter("message");
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>Student Information</h3>
Name : <%=name%> <br>
Gender : <%=gender%> <br>
Birthday : <%=birthday%> <br>
Grade : <%=grade%>학년 <br>
Subject : <%=str%> <br>
Message : <%=message%> <br>
</body>
</html>