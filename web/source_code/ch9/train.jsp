<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="moon.yourbean.*"%> 
<jsp:useBean id="ok" class="moon.yourbean.SAXBean" scope="page"/>
<jsp:setProperty name="ok" property="stationName" param="stationName"/>
<jsp:setProperty name="ok" property="startOrArrive" param="startOrArrive"/>
<HTML><BODY bgcolor=cyan><Font size=2>
 <FORM action="" Method="post" >
    ѡ��վ��:
    <Select name="stationName">
           <Option value="������վ">������վ
           <Option value="�㶫վ">�㶫վ
    </Select> 
   ѡ��ʼ�����յ���
  <INPUT type="radio" name="startOrArrive" value="ʼ���г�" checked="default">ʼ���г� 
  <INPUT type="radio" name="startOrArrive" value="�յ��г�">�յ��г�
  <BR> <Input type=submit value="�ύ">
 </FORM>
 <jsp:getProperty name="ok" property="stationName"/>,
<jsp:getProperty name="ok" property="startOrArrive"/>:
<jsp:getProperty name="ok" property="trainMessages"/>
</FONT></BODY></HTML>
