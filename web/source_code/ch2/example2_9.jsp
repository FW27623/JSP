<%@ page contentType="text/html;charset=GB2312" %>
<%@ page info="�廪��ѧͼ��tsinghua.jpg" %>
<%  String s=getServletInfo();
    String str[]=s.split("ͼ��");
%>
<HTML><center>
<body background="image/<%=str[1]%>"><font Size=4>
<br><%=str[0] %>���������й�����������
<br><%=str[0] %>��ȫ�������ĸߵ�ѧ��
</font></body></center><HTML>
