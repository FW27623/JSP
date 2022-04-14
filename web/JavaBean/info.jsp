<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/13,0013
  Time: 19:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息提交页</title>
</head>
<body>
<form action="showinfo.jsp" method="post">
    姓名：<input type="text" name="name" value=""><br>
    密码：<input type="password" name="password" value=""><br>
    性别：
    <input type="radio" name="gender" value="男"/>男
    <input type="radio" name="gender" value="女"/>女<br>
    <label>年龄:</label>
    <select name="age">
        <option value="15-20">15-20岁</option>
        <option value="21-25">21-25岁</option>
        <option value="26-30">26-30岁</option>
    </select><br>
    <label>爱好:</label>
    <input type="checkbox" name="hobby" value="唱"/>唱
    <input type="checkbox" name="hobby" value="跳"/>跳
    <input type="checkbox" name="hobby" value="Rap"/>Rap
    <input type="checkbox" name="hobby" value="篮球"/>篮球<br>
    <input type="submit" value="提交">
    <input type="reset" value="重置">
</form>
</body>
</html>
