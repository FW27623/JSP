<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body bgcolor=cyan><font size=3>
   <jsp:useBean id="circle" class="tom.jiafei.Circle" scope="page" />
   <%--ͨ������JSP��ǣ��û������һ����������page��������circle��bean --%>
   <P>Բ�ĳ�ʼ�뾶�ǣ�<%=circle.getRadius()%>
   <% double newRadius =100;  
      circle.setRadius(newRadius);   //�޸İ뾶
   %>
   <P>�޸İ뾶Ϊ<%= newRadius %>
   <br><b>ĿǰԲ�İ뾶�ǣ�<%=circle.getRadius()%>
   <br><b>Բ���ܳ��ǣ�<%=circle.circlLength()%>
   <br><b>Բ������ǣ�<%=circle.circleArea()%>
</font></body></HTML>
