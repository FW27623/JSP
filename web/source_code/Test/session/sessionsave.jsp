<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/16,0016
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
      String user = request.getParameter("user");
      session.setAttribute("u",user);
      out.print("用户名："+user);
  %><br>
  <a href ="sessioninfo1.jsp">sessioninfo1</a><br>
  <a href ="sessioninfo2.jsp">sessioninfo2</a><br>
  <a href ="sessioninfo3.jsp">sessioninfo3</a><br>
  <a href="logout.jsp">注销</a>
</body>
</html>
