<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" %>
<MHML><body bgcolor=cyan><font size=2 >  
   <% String path=request.getServletPath();    //�����ҳ��
      String webDir = request.getContextPath();//��ȡ��ǰWeb����Ŀ¼������
      webDir = webDir.substring(1); //ȥ������ǰ���Ŀ¼���ţ�/
      String  clientIP=request.getRemoteAddr();//�û���IP��ַ
      int serverPort=request.getServerPort(); // �������Ķ˿ں�
    %> 
 �û������ҳ�棺<%=path %>
<br>Web����Ŀ¼�����֣�<%=webDir %>
<br>�û���IP��ַ:<%=clientIP %>
<br>�������Ķ˿ں�:<%=serverPort %>
</font></body></HTML>

