<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=cyan><font size=2>
 <jsp:useBean id="fileBean" class="mybean.data.Shiyan2_Bean" scope="request"/>
 <form action="readFileByLine" method="post" name="form">
 �����ļ���·��(��:d:/2000):
 <input type="text" name="filePath" size=12>
 <br>�����ļ�������(��:Hello.java):
 <input type="text" name="fileName" size=9>
 <br><input type="submit" value="��ȡ" name="submit">
 </form>
 <b><br>���������:<br>
 <br> <%= fileBean.getContent() %>
 </b>   
 </font></body></HTML>
