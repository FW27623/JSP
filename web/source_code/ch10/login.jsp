<%@ page contentType="text/html;charset=GB2312" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY background=image/back.jpg><font size=2>
<div align="center">
<table border=2>
<tr> <th>��¼</th></tr>
<FORM action="loginServlet" Method="post">
<tr><td>��¼����:<Input type=text name="logname"></td></tr>
<tr><td>��������:<Input type=password name="password"></td></tr>
</table>
<Input type=submit name="g" value="�ύ">
</form>
</div >
<div align="center" >
��¼������Ϣ:<jsp:getProperty name="loginBean" property="backNews"/>
<br>��¼����:<jsp:getProperty name="loginBean" property="logname"/>
<div >
</font>
</BODY></HTML>
