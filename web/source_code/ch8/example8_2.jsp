<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*"%> 
<HTML><body bgcolor=#EEFFAD><font Size=2>
<% 
    String webDir = request.getContextPath();//��ȡ��ǰWeb����Ŀ¼������
    webDir = webDir.substring(1); //ȥ������ǰ���Ŀ¼���ţ�/
    File f= new File(""); //���ļ���Ϊ��Tomcat����������Ŀ¼�У���binĿ¼��
    String path = f.getAbsolutePath();
    int index = path.indexOf("bin");
    String tomcatDir = path.substring(0,index);//tomcat�İ�װĿ¼
    File dir=new File(tomcatDir+"/webapps/"+webDir+"/image");
%>
 <br> ��<%=webDir%>�´���һ���µ�Ŀ¼��image,<br>�ɹ���������
    <%=dir.mkdir()%>
 <br> image��Ŀ¼��<%=dir.isDirectory()%>
</font></body></HTML>
