<%@ page contentType="text/html;charset=gb2312" %>
 <jsp:useBean id="fileBean" class="mybean.data.Shiyan1_Bean" scope="request"/>
<HTML><body bgcolor=yellow>
<font size=2>
  <form action="writeFile" method=post>
     ��ѡ��һ��Ŀ¼��
     <Select name="fileDir" >
       <Option value="C:/1000">C:/1000
       <Option value="D:/2000">D:/2000
       <Option value="D:/1000">D:/1000
     </Select> 
  <br>���뱣���ļ������֣�<input type=text name="fileName" >
  <br>�����ļ������ݣ�<BR>
   <TextArea name="fileContent" Rows="5" Cols="38"></TextArea>
  <br><input type=submit value="�ύ">
  </form> 
  <b>�ļ���λ��: <jsp:getProperty name="fileBean" property="filePath"/>,
  �ļ������֣�<jsp:getProperty name="fileBean" property="fileName"/>,
  �ļ��ĳ��ȣ�<jsp:getProperty name="fileBean" property="fileLength"/>�ֽڡ�
</font>
</body></HTML>
