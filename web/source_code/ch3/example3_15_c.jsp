<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" %>
<head> 
  <br>����������<a href="example3_15_a.jsp">ȷ������ҳ��</a>
  <br>ѡ��ͼ�飺<a href="example3_15_b.jsp">ѡ��ͼ��ҳ��</a>
  <br>���ˣ�    <a href="example3_15_c.jsp">����ҳ��</a> 
</head>
<%! public String handleStr(String s) {
       try {  byte [] bb= s.getBytes("iso-8859-1");
              s = new String(bb);
       }
       catch(Exception exp){}
       return s;
    }
%>
<HTML><body bgcolor=#EEEEFF><font size=2>
<%  String personName=(String)session.getAttribute("name");
    StringBuffer bookMess=null;
    if(personName==null||personName.length()== 0) {
      out.println("����������ҳ����������"); 
    }
    else {
       bookMess = (StringBuffer)session.getAttribute("book");
    }
 %>
 <%  String buyBook=new String(bookMess);
     double sum =0;
     String [] price =buyBook.split("[^0123456789.]");
     if(price!=null) {
       for(String item:price)
         try {  sum+=Double.parseDouble(item);
         }
         catch(NumberFormatException exp){}
     }
 %><br><%=handleStr(personName) %>������Ϣ��<br>
   <%= handleStr(buyBook) %> <br>
   �ܼ۸�<%= sum %>
</FONT></body></HTML>
