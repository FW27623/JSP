<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" %>
<HTML><body bgcolor=yellow>
 <%  session.setMaxInactiveInterval(5);
     boolean boo=session.isNew();
     out.println("<br>������һ�η��ʵ�ǰweb����Ŀ¼�����ĻỰ���µ�");
     out.println("<br>����㲻���״η��ʵ�ǰweb����Ŀ¼�����ĻỰ�����µ�");
     out.println("<br>�Ự���µ��𣿣�"+boo);
     out.println("<br>��ӭ������ҳ�棬����session����������ʱ��Ϊ"+
                        session.getMaxInactiveInterval()+"��");
     out.println("<br>����session�Ĵ���ʱ����"+new Date(session.getCreationTime()));
     out.println("<br>����session��Id��"+session.getId()); 
     Long lastTime=(Long)session.getAttribute("lastTime");
     if(lastTime==null) {
         long n=session.getLastAccessedTime();
         session.setAttribute("lastTime",new Long(n));
     } 
     else {
         long m=session.getLastAccessedTime();
         long n=((Long)session.getAttribute("lastTime")).longValue();
         out.println("<br>���ķ���ʱ���Լ��"+(m-n)+"����,��Լ"+(m-n)/1000+"��");
         session.setAttribute("lastTime",new Long(m)); 
    } 
 %>
</body></HTML>
