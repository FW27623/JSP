<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body ><font size=3>
 <%--ͨ��JSP��ǣ��û����һ����������session��id��girl��bean: --%>
 <jsp:useBean id="girl" class="tom.jiafei.Circle" scope="session" />
  <i><br>������example4_2_b.jspҳ��
  <br>��ǰԲ�İ뾶�ǣ� <%=girl.getRadius()%>
  <% girl.setRadius(99);
  %>
  <br>�޸ĺ��Բ�İ뾶�ǣ�<%=girl.getRadius()%></i>
  <a href="example4_2_a.jsp"><BR>example4_2_a.jsp</a>
</font></body></HTML>  
