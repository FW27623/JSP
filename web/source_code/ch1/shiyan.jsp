<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY BGCOLOR=green>
<FONT Size=3>
<br> Ӣ����ĸ��<br>
    <%   char c ='A';
         for(c='A';c<='Z';c++) {
            out.print(" "+c);
            if(c=='M')
              out.print("<br>");
         }
    %>
</FONT></BODY></HTML>
