<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="pageBean" class="mybean.data.Example7_8_Bean" scope="session"/>
<HTML><body bgcolor=#9FEFDF><center>
<br>��ǰ��ʾ�������ǣ�
<jsp:setProperty name="pageBean" property="pageSize" param="pageSize"/>
<jsp:setProperty name="pageBean" property="currentPage" param="currentPage"/>
  <table border=1>
  <%
      String [][] table=pageBean.getTableRecord();
      if(table==null) {
         out.print("û�м�¼");
         return;
      }
      String []columnName=pageBean.getColumnName();
      if(columnName!=null) { 
        out.print("<tr>");
        for(int i=0;i<columnName.length;i++){
          out.print("<th>"+columnName[i]+"</th>");
        }
        out.print("</tr>");
      } 
      int totalRecord = table.length;
      out.println("ȫ����¼��"+totalRecord); //ȫ����¼��
      int pageSize=pageBean.getPageSize();  //ÿҳ��ʾ�ļ�¼��
      int totalPages = pageBean.getTotalPages();
      if(totalRecord%pageSize==0)
           totalPages = totalRecord/pageSize;//��ҳ��
      else
           totalPages = totalRecord/pageSize+1;
      pageBean.setPageSize(pageSize);
      pageBean.setTotalPages(totalPages);
      if(totalPages>=1) {
         if(pageBean.getCurrentPage()<1)
             pageBean.setCurrentPage(pageBean.getTotalPages());
         if(pageBean.getCurrentPage()>pageBean.getTotalPages())
             pageBean.setCurrentPage(1);
         int index=(pageBean.getCurrentPage()-1)*pageSize;
         int start=index;  //table��currentPageҳ��ʼλ��
         for(int i=index;i<pageSize+index;i++) { 
            if(i==totalRecord)
               break;
            out.print("<tr>");
            for(int j=0;j<columnName.length;j++) {
                out.print("<td>"+table[i][j]+"</td>");
            }
            out.print("</tr>");
        }
     }
%>
 </table>
 <br>ÿҳ�����ʾ<jsp:getProperty name="pageBean" property="pageSize"/>����Ϣ
 <br>��ǰ��ʾ��<font color=blue>
     <jsp:getProperty name="pageBean" property="currentPage"/>
   </font>ҳ,����
   <font color=blue><jsp:getProperty name="pageBean" property="totalPages"/>
   </font>ҳ��
<table>
  <tr><td><form action="" method=post>
          <input type=hidden name="currentPage" value=
         "<%=pageBean.getCurrentPage()-1 %>">
           <input type=submit name="g" value="��һҳ"></form></td>
      <td><form action="" method=post>
          <input type=hidden name="currentPage"
           value="<%=pageBean.getCurrentPage()+1 %>">
          <input type=submit name="g" value="��һҳ"></form></td></tr>
 <tr><td> <form action="" method=post>
          ÿҳ��ʾ<input type=text name="pageSize" value =1 size=3>
          ����¼<input type=submit name="g" value="ȷ��"></form></td>
      <td> <form action="" method=post>
           ����ҳ�룺<input type=text name="currentPage" size=2 >
           <input type=submit name="g" value="�ύ"></form></td></tr>
</table>
</center>
</body></HTML>
