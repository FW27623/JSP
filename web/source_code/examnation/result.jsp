<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/03/31,0031
  Time: 08:21
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
    String first = request.getParameter("first");
    String second = request.getParameter("second");
    int score = 0;
    if(first.equals("2")){
        score += 10;
    }
    if(second.equals("3")){
        score += 10;
    }
    out.println("你的得分是："+score);
%>
</body>
</html>
