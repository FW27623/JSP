<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=cyan><font size=2>
    <form action="example3_5_receive.jsp" method=post name=form>
      <br>��������:<input type="radio" name="R" value="on" >�� 
          <input type="radio" name="R" value="off" checked="default">�ر� 
      <br>ϲ�������: 
          <input type="checkbox" name="item" value="����������" >����������
          <input type="checkbox" name="item" value="AC������" >AC������
      <br><input type="checkbox" name="item" value="�����" >�����
          <input type="checkbox" name="item" value="Ľ��ڶ�" >Ľ��ڶ�
          <input type="hidden" value="��������,����������" name="secret">
      <br><input type="submit" value="�ύ" name="submit">
          <input type="reset" value="����" >
   </form> 
</font></body></HTML>
