<%@ page contentType="text/html;charset=gb2312" %>
<HTML>
<body bgcolor=cyan><FONT size=4>
   <form  action="" method=post name=form>
      <input type="text" name="girl"> 
      <input type="submit" value="ȷ��" name="submit">
   </form>  
   <%   String textContent=request.getParameter("girl");
        if(textContent==null) {
           textContent="0";
        }
        String []a = textContent.split("#");
        double sum=0;
        try {  
              for(String s:a) {
                 out.print(s+" ");
                 sum+=Double.parseDouble(s);
              } 
              out.print("<br>���ֵĺ���"+sum);
        }
        catch(NumberFormatException e) {
           out.print("<BR>"+"�����������ַ�");
        }
    %>
</FONT></body></HTML>
