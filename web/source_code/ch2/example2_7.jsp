<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body>
  <!-- �����������ɫΪ��ɫ -->
  <FONT size=3 color=blue>��ȡ�ַ���"C:\myfile\jspfile\example.jsp"�е�"example.jsp" 
</FONT>
   <%-- �����ǳ�Ա���������� --%>
  <%!  String s="C:\\myfile\\jspfile\\example.jsp";
  %>
  <%-- ������Java����Ƭ --%>
  <%  int index=s.lastIndexOf("\\"); 
      String str=s.substring(index+1);
  %>
  <BR><%-- ������Java���ʽ --%> 
  <%= str %>
</body></HTML>  
