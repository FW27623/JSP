<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/31,0031
  Time: 09:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String username = (String)session.getAttribute("username");
    out.println("<h1>欢迎"+username+"登录</h1>");
    out.println("您已登陆成功！");
%>
</body>
</html>
