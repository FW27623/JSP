<%@ page contentType="text/html;charset=GB2312" %>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML><BODY bgcolor=cyan><Font size=2>
<CENTER>
<FORM action="helpRegister" name=form method=post>
<table>
    ����������Ϣ����Ա���ֱ�������ĸ��������ɣ���*���������д��
   <tr><td>��Ա����:</td><td><Input type=text name="logname" >*</td></tr>
   <tr><td>��������:</td><td><Input type=password name="password">*</td></tr>
   <tr><td>�����ʼ�:</td><td><Input type=text name="email"></td></tr>
   <tr><td>��ϵ�绰:</td><td><Input type=text name="phone"></td></tr>
  </table>
  <table>
   <tr><td><Font size=2>�������ļ����ͽ��ѱ�׼��</td></tr>
   <tr>
      <td><TextArea name="message" Rows="6" Cols="30"></TextArea></td>
   </tr>
   <tr><td><Input type=submit name="g" value="�ύ"></td> </tr>
</table>
</Form>
</CENTER>
</Body></HTML>
