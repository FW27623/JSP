<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=pink><font size=3>
<%  int count=((Integer)session.getAttribute("count")).intValue();
    int num=((Integer)session.getAttribute("save")).intValue();
%>
<br>��ϲ�㣬�¶���
<br><b>��������<%=count%>��
<br>������־���<%=num%>
</font></body></HTML>


