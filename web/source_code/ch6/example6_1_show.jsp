<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="seriesData" 
             type="mybean.data.Example6_1_Bean" scope="request"/>
<HTML><body bgcolor=#EEFF88>
  <table border=1>
   <tr> 
    <th> ���е�����</th>
    <th> <jsp:getProperty name="seriesData" property="name"/></th>
    <th> ��������</th>
    <th> ��ͽ��</th>
   </tr>
    <td><jsp:getProperty name="seriesData" property="firstItem"/></td>
    <td><jsp:getProperty name="seriesData" property="var"/></td>
    <td><jsp:getProperty name="seriesData" property="number"/></td>
    <td><jsp:getProperty name="seriesData" property="sum"/></td>
   </tr>
   </table>
</body></HTML>
