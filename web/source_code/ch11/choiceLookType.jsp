<%@ page contentType="text/html;charset=GB2312" %>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML>
<BODY bgcolor=cyan><center><Font size=3>
    <table>
    <FORM action="helpShowMember" method="post" name="form">
     <BR>��ҳ��ʾȫ���Ա
      <INPUT type="hidden" value="1" name="showPage" size=6> 
    <INPUT type="submit" value="��ʾ" name="submit"> 
    </Form>
   <FORM action="helpShowMember" method="get" name="form">
     <br>����Ҫ���ҵĻ�Ա����
     <INPUT type="text"  name="logname" size=6> 
     <INPUT type="submit" value="��ʾ" name="submit">
    </FORM>
 </BODY>
</HTML>
