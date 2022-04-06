<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/31,0031
  Time: 08:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Check</title>
</head>
<body>
<%
    String select = request.getParameter("select");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(select.equals("admin") && username.equals("admin") && password.equals("admin")){
        response.sendRedirect("admin.jsp");
        session.setAttribute("username",username);
    }else if(select.equals("student") && username.equals("19005009") && password.equals("19005009")){
        response.sendRedirect("student.jsp");
        session.setAttribute("username",username);
    }else{
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>
