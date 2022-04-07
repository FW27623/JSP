<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/06,0006
  Time: 19:12
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
    String name = request.getParameter("name");
    session.setAttribute("name",name);
%>
<form action="total.jsp" method="post">
    请选择你要购买的商品：<br>
    <input type="checkbox" name="goods" value="apple">苹果：5元<br>
    <input type="checkbox" name="goods" value="banana">香蕉：3元<br>
    <input type="checkbox" name="goods" value="watermelon">西瓜：4元<br>
    <input type="checkbox" name="goods" value="grape">葡萄：2元<br>
    <input type="checkbox" name="goods" value="litchi">荔枝：3元<br>
    <input type="checkbox" name="goods" value="peach">梨子：2元<br>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
