<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/24,0024
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展示页面</title>
</head>
<body>
   <h3>学生信息展示页</h3>
   <%request.setCharacterEncoding("UTF-8");%>
   <jsp:useBean id="stu" class="admin.fw1028.top.stuBean"/>
   <jsp:setProperty name="stu" property="*"/>
   学号：<jsp:getProperty name="stu" property="id"/><br>
   姓名：<jsp:getProperty name="stu" property="name"/><br>
   专业：<jsp:getProperty name="stu" property="major"/><br>
   年级：<jsp:getProperty name="stu" property="grade"/><br>
</body>
</html>
