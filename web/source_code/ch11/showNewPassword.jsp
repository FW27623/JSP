<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.Password"%> 
<jsp:useBean id="password" type="mybean.data.Password" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML><BODY bgcolor=yellow >
<CENTER>
 <BR><jsp:getProperty name="password" property="backNews" />
 <BR>���������룺<jsp:getProperty name="password" property="newPassword" />
 <BR>���ľ����룺<jsp:getProperty name="password" property="oldPassword" />
</FONT>
</CENTER>
</BODY>
</HTML>
