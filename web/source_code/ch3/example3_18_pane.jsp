<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" %>
<HTML><body>
     <%! Vector v=new Vector();
         int i=0; 
         ServletContext  application;
         synchronized void leaveWord(String s) { //���Է���
            application=getServletContext();;
            i++;
            v.add("No."+i+","+s);
            application.setAttribute("Mess",v); 
         }
     %> 
     <% String name=request.getParameter("peopleName");
        String title=request.getParameter("title");
        String messages=request.getParameter("messages");
           if(name==null)
              name="guest"+(int)(Math.random()*10000);
           if(title==null)
              title="�ޱ���";
           if(messages==null)
              messages="����Ϣ";
           String s=name+"#"+title+"#"+messages; 
           leaveWord(s);
           out.print("������Ϣ�Ѿ��ύ��");
     %>
  <a href="example3_18_input.jsp" >��������ҳ�� 
</body></HTML>
