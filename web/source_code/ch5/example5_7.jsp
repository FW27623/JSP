<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=#EEFFDD ><font size=3>
<% session.setAttribute("message","��������ĸ");
   char a[]=new char[26];
   int m=0;
   for(char c='a';c<='z';c++) {
      a[m]=c;
      m++;
   }
   int randomIndex=(int)(Math.random()*a.length);      
   char ch=a[randomIndex];     //��ȡһ��Ӣ����ĸ
   session.setAttribute("savedLetter",new Character(ch));//������ĸ����session��
%>
���ʻ�ˢ�¸�ҳ���������õ�һ��Ӣ����ĸ.
<BR>����������ȥ�³������ĸ:<a href="example5_7_input.jsp">ȥ����ĸ</a>
</font></body></HTML>
