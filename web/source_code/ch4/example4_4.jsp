<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="zhang" class="tom.jiafei.Student" scope="request"/>
<HTML><body bgcolor=pink><font size=3>
<jsp:setProperty name="zhang" property="name" value="����"/>
<b> ѧ��������<jsp:getProperty name="zhang" property="name"/></b>
<jsp:setProperty name="zhang" property="height" value="<%=1.78%>"/>
<br><b> ѧ����ߣ�<jsp:getProperty name="zhang" property="height"/>��</b>
</font></body></HTML>
