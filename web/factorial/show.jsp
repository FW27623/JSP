<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/12,0012
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String number = request.getParameter("number");
    if(number.matches("[0-9]+")){
        int num = Integer.parseInt(number);
        int result = 1;
        for(int i = 1; i <= num; i++){
            result *= i;
        }
        out.print(result);
    }else{
        out.print("请输入一个非负数");
    }
%>
</body>
</html>
