<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/16,0016
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
%><br>
  <a href ="sessioninfo1.jsp">sessioninfo1</a><br>
  <a href ="sessioninfo2.jsp">sessioninfo2</a><br>
  <a href ="sessioninfo3.jsp">sessioninfo3</a><br>
  <a href ="sessionsave.jsp">sessionsave</a>
</body>
</html>
