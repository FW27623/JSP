<%--
  Created by IntelliJ IDEA.
  User: FangWei
  Date: 2022/04/12,0012
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果展示页</title>
</head>
<body>
<%
    double first = Double.parseDouble(request.getParameter("first"));
    double second = Double.parseDouble(request.getParameter("second"));
    double third = Double.parseDouble(request.getParameter("third"));
    if(first>0 && second>0 && third>0){
        if(first+second>third && first+third>second && second+third>first){
            double p = (first+second+third)/2;
            double area = Math.sqrt(p*(p-first)*(p-second)*(p-third));
            out.print("<h1>三角形的面积为："+area+"</h1>");
        }else{
            out.print("<h1>不能构成三角形</h1>");
        }
    }else{
        out.print("<h1>请输入数字</h1>");
    }
%>
</body>
</html>
