<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="count" class="red.star.ComputerCount" scope="session"/>
<HTML><body bgcolor=cyan><font size=3>
<p> ��վ��example4_10_a.jspҳ��
   <br>���ǵ�<jsp:getProperty name="count" property="number"/>             
      �������ߡ�<br>
   <a href="example4_10_b.jsp">��ӭȥexample4_10_b.jsp�ι�</a>
</body></HTML>
