<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/13,0013
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息展示页</title>
</head>
<body>
   <h3>信息展示页</h3>
   <%request.setCharacterEncoding("UTF-8");%>
   <jsp:useBean id="show" class="admin.fw1028.top.show" scope="request"/>
   <jsp:setProperty name="show" property="*"/>
   姓名：<jsp:getProperty name="show" property="name"/><br>
   密码：<jsp:getProperty name="show" property="password"/><br>
   性别：<jsp:getProperty name="show" property="gender"/><br>
   年龄：<jsp:getProperty name="show" property="age"/>岁<br>
   爱好：<%
      String[] hobby = request.getParameterValues("hobby");
      //如果接收到的数组hobby不为空，将数组内元素提取出来并用逗号分隔输出，并去除[]
      if(hobby != null){
          out.print(Arrays.toString(hobby).replace("[","").replace("]",""));
      }
   %>
</body>
</html>
