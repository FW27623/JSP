<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=yellow>
 <jsp:useBean id="boy" class="tom.jiafei.Circle" scope="application" />
  Բ�ĳ�ʼ�뾶�ǣ�<%=boy.getRadius()%>
  <% boy.setRadius(1000);
  %>
 <br><b>�޸ĺ��Բ�İ뾶�ǣ�<%=boy.getRadius()%>
</body></HTML>     
