<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body bgcolor=cyan><font size=3>
   <%--ͨ��JSP��ǣ��û����һ����������session��id��girl��bean: --%>
   <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" />
 <br>������example4_2_a.jspҳ��
 <br>Բ�İ뾶�ǣ� <%=girl.getRadius()%>
 <a href="example4_2_b.jsp"><br>example4_2_b.jsp </a>
</font></body></HTML> 
