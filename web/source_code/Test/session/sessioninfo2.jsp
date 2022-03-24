<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/16,0016
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
2显示session中信息<br>
<%
    String user = (String)session.getAttribute("u");
    out.print("用户名："+user);
%><br>
<a href ="sessionsave.jsp?user=<%=user%>">sessionsave</a><br>
<a href ="sessioninfo1.jsp">sessioninfo1</a><br>
<a href ="sessioninfo3.jsp">sessioninfo3</a><br>
<a href="logout.jsp">注销</a>
</body>
</html>
