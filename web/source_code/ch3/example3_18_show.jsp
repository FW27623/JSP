<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" %>
<%! public String handleStr(String s) {
       try {  byte [] bb= s.getBytes("iso-8859-1");
              s = new String(bb);
       }
       catch(Exception exp){}
       return s;
    }
%>
<HTML><body>
  <% Vector v=(Vector)application.getAttribute("Mess");
     for(int i=0;i<v.size();i++) {
        String message=(String)v.elementAt(i);
        String []a =message.split("#");
        out.print("������:"+handleStr(a[0])+",");
        out.print("����:"+handleStr(a[1])+"<br>");
        out.print("��������:<br>"+handleStr(a[2]));
        out.print("<br>--------------<br>");
     } 
  %>
</body></HTML>
