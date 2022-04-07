<%@ page import="java.util.Arrays" %><%--
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
    String[] goods = request.getParameterValues("goods");
    int apple=2;
    int banana=3;
    int watermelon=4;
    int grape=5;
    int litchi=6;
    int pear=2;
    int total=0;
    String name = (String) session.getAttribute("name");
    out.println("顾客姓名："+name+"<br>");
    out.println("你订购的商品是：");
    if (goods != null) {
        Arrays.sort(goods);
        for (String good : goods) {
            out.println(good+"、");
        }
    } else {
        out.println("<script>alert('请选择商品');history.back();</script>");
    }
    if (goods != null) {
        for (String good : goods) {
            if (good.equals("apple")) {
                total += apple;
            } else if (good.equals("banana")) {
                total += banana;
            } else if (good.equals("watermelon")) {
                total += watermelon;
            } else if (good.equals("grape")) {
                total += grape;
            } else if (good.equals("litchi")) {
                total += litchi;
            } else if (good.equals("pear")) {
                total += pear;
            }
        }
    }
    out.println("<br>");
    out.println("你订购的商品总价是："+total+"元");
%>
</body>
</html>
