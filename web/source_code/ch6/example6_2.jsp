<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="digitBean" 
             class="mybean.data.Example6_2_Bean" scope="session"/>
<HTML><body bgcolor=#EFDDFA><font size=2>
  <form action="compute" method=post name=form>
   <table>
   <tr><td> ����������:</td>
       <td> <input type=text name="numberOne" value=0 size=6></td>
     <td> <input type=text name="numberTwo" value=0 size=6></td>
   </tr>
   <tr><td>ѡ���������:</td>
       <td> <select name="operator">
              <option value="+">+(��)
              <option value="-">-������
              <option value="*">*���ˣ�
              <option value="/">/������
            </select> 
       </td>
       <td> <input type="submit" value="�ύ" name="sub"></td>
   </tr>
   </table>
   </form> 
    ��������
  <jsp:getProperty name="digitBean" property="numberOne"/>
  <jsp:getProperty name="digitBean" property="operator"/>
  <jsp:getProperty name="digitBean" property="numberTwo"/> =
  <jsp:getProperty name="digitBean" property="result"/> 
</font></body></HTML>
