<%@ page contentType="text/html;charset=GB2312" %>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML><BODY bgcolor=pink><CENTER> 
<Font size=2>
<FORM action="helpModifyMess" name=form method =post>
<table>
   <tr>
       <td>����ϵ�绰:</td>
       <td><Input type=text name="newPhone"></td>
   </tr>
   <tr>
       <td>�µ����ʼ�:</td>
       <td><Input type=text name="newEmail"></td>
   </tr>  
  </table>
  <table>
   <tr>
        <td>�¼����ͽ��ѱ�׼��</td>
  </tr>
  <tr>
      <td><TextArea name="newMessage" Rows="6" Cols="30">
          </TextArea>
     </td>
  </tr>
   <tr>
      <td><Input type=submit name="g" value="�ύ�޸�"></td>
   </tr>
   <tr>
      <td><Input type=reset value="����"></td>
   </tr>
 </table><Font></CENTER>
</BODY>
</HTML>
