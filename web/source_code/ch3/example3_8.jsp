<%@ page contentType="text/html;charset=gb2312" %>
<%! public String handleStr(String s) {
       try {  byte [] bb= s.getBytes("iso-8859-1");
              s = new String(bb);
       }
       catch(Exception exp){}
       return s;
    }
%>
  <%   String vedio = request.getParameter("vedio");
       if(vedio==null)   vedio = "";
       vedio = handleStr(vedio);
  %>
<HTML><center>
   <form action="" method=post name=form>
   <b>ѡ����Ƶ:<br>
       <select name=vedio  >
          <option value="�ҵ����.avi">�ҵ����
          <option value="�λ�.avi">�λ�
          <option value="Ϧ��ɽ��.avi" selected>Ϧ��ɽ��
       </select> 
      <input type="submit" value="�ύ" name="submit">
   </form> 
   <image src="image/flower.jpg" width=120 height=90></image><!-- ͼ�� -->
   <embed src="avi/<%=vedio %>" width=300 height=180 >��Ƶ</embed><!-- ��Ƶ -->
</font></body></Center></HTML>
