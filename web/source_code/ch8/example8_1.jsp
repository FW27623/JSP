<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*"%> 
<HTML><body bgcolor=cyan><font Size=2>
<%  String jspPage=request.getServletPath();    //�����ҳ�������
    String webDir = request.getContextPath();//��ȡ��ǰWeb����Ŀ¼������
    webDir = webDir.substring(1); //ȥ������ǰ���Ŀ¼���ţ�/
    jspPage =jspPage.substring(1); //ȥ������ǰ���Ŀ¼���ţ�/
    File f= new File(""); //���ļ���Ϊ��Tomcat����������Ŀ¼�У���binĿ¼��
    String path = f.getAbsolutePath();
    int index = path.indexOf("bin");
    String tomcatDir = path.substring(0,index);//tomcat�İ�װĿ¼
    File file=new File(tomcatDir+"/webapps/"+webDir,jspPage);
  %>
  �ļ�<%=file.getName()%>�ǿɶ�����<b><%=file.canRead()%></b>
 <br>�ļ�<%=file.getName()%>�ĳ��ȣ�<b><%=file.length()%>�ֽ�</b>
 <br><%=file.getName()%>�ĸ�Ŀ¼��:<br><b><%=file.getParent()%></b>
 <br> <%=file.getName()%>�ľ���·���ǣ�<br><b><%=file.getAbsolutePath()%>
</font></body></HTML>
