<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/24,0024
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息展示</title>
</head>
<body>
<form action="stuShow.jsp" method="post">
   <h3>学生信息提交页</h3>
   学号：<input name="id"><br>
   姓名：<input name="name"><br>
   专业：<input name="major"><br>
   年级：<select name="grade">
       <option value="大一" selected>大一</option>
       <option value="大二">大二</option>
       <option value="大三">大三</option>
       <option value="大四">大四</option>
   </select><br>
   <input type="submit" value="提交">
</form>
</body>
</html>
