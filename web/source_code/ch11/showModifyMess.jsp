<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.ModifyMessage"%> 
<jsp:useBean id="modify" type="mybean.data.ModifyMessage" scope="request"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML><BODY bgcolor=yellow >
<Font size=3>
<CENTER>
 <jsp:getProperty name="modify" property="backNews"/>,
 ���޸���Ϣ���£�
 <table border=1> 
 <tr>
     <td>�µ绰</td>
     <td>��email</td>
     <td>�¼����ͽ��ѱ�׼</td>
 </tr>
 <tr> 
     <td><jsp:getProperty name="modify" property="newPhone"/></td>
     <td><jsp:getProperty name="modify" property="newEmail"/></td>
     <td><textarea>
         <jsp:getProperty name="modify" property="newMessage"/>
         </textarea>
     </td>
 </tr>
</FONT>
</CENTER>
</BODY>
</HTML>

