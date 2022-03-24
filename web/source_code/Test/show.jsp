<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/09,0009
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show.jsp</title>
</head>
<body>
<%
    String user =request.getParameter("user");
    out.println("传递过来的值为："+user);
%>           
</body>
</html>
