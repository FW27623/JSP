<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/31,0031
  Time: 08:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页</title>
</head>
<body>
<form action="check.jsp" method="post">
  <h3>登陆页面</h3>
  账号：<input type="text" name="username" value=""><br>
  密码：<input type="password" name="password" value=""><br>
  <input type="radio" name="select" value="admin">管理员
  <input type="radio" name="select" value="student">学生<br>
  <input type="submit" value="登录">
</form>
</body>
</html>
