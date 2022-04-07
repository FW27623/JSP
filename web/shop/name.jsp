<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/06,0006
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
%>
    <form action="goods.jsp" method="post">
        请输入你的姓名：<br>
        <input type="text" name="name" value=""/><br>
        <input type="submit" value="提交"/>
    </form>
</body>
</html>
