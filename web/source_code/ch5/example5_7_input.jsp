<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body ><font size=2>
<%  String message=(String)session.getAttribute("message"); //��ȡ�Ự�е���Ϣ
%>
<table border=1>
<form action="guess" method=post>
 <tr><td> �������Ĳ²⣨a~z֮�����ĸ��:</td>
 <td><input Type=text name=clientGuessLetter size=4>
     <input Type=submit value="�ύ"></td>
 </tr><td> ��ʾ��Ϣ:</td>
      <td> <%= message%></td>
</form>
<form action="getLetter.jsp" method=post>
  <tr><td>������ť���¿�ʼ: </td>
      <td><Input Type=submit value="����õ�һ����ĸ"></td>
  </tr>
</form>
</font></body></HTML>
