<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="recordBean" class="mybean.data.Shiyan1_Bean" scope="session"/>
<HTML><body bgcolor=yellow><font size=2>
<form action="shiyan1Servlet" method=post>
<b>���ݿ�:<input type="text" name="dataBase" size=22 value =warehouse>
<br>������<input type="text" name="tableName" size=23 value=product>
<br>�û���(Ĭ��root)��<input type="text" name="user" size=10 value=root>
<br>�û�����(Ĭ�Ͽ�)��<input type="text" name="password" size=10>
<br><input type="submit" name="b" value="�ύ">
</form>
 <table border=1>
  <%
      String [][] table=recordBean.getTableRecord();
      if(table==null) {
         out.print("û�м�¼");
         return;
      }
      String []columnName=recordBean.getColumnName();
      if(columnName!=null) { 
        out.print("<tr>");
        for(int i=0;i<columnName.length;i++){
          out.print("<th>"+columnName[i]+"</th>");
        }
        out.print("</tr>");
      } 
      out.println("ȫ����¼��"+table.length); //ȫ����¼��
      for(int i=0;i<table.length;i++) { 
          out.print("<tr>");
          for(int j=0;j<columnName.length;j++) {
                out.print("<td>"+table[i][j]+"</td>");
          }
          out.print("</tr>");
     }
%>
 </table>
</font></body></HTML>  
