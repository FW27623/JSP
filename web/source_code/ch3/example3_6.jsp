<%@ page contentType="text/html;charset=gb2312" %>
<%! public String handleStr(String s) {
       try {  byte [] bb= s.getBytes("iso-8859-1");
              s = new String(bb);
       }
       catch(Exception exp){}
       return s;
    }
%>
  <%   String music = request.getParameter("music");
       String pic = request.getParameter("pic");
       if(music==null) music = "";
       if(pic==null)   pic = "";
       music = handleStr(music);
       pic   = handleStr(pic); 
  %>
 
<HTML><center>
   <body background="image/<%= pic %>"><font size=2 >
   <bgsound src = "sound/<%=music %>" loop = -1/>  
   <form action="" method=post name=form>
   <b>ѡ�񱳾�����:<br>
       <select name="music" >
          <Option selected value="back1.mp3">�̵�Сҹ��
          <Option value="back2.mp3">����һƬ��
          <Option value="back3.mp3">��ӹ�
       </select> 
   <br><b>ѡ�񱳾�ͼ��:<br>
       <select name="pic" size = 2>
          <option value="back1.jpg">�ɻ�ͼ
          <option value="back2.jpg">õ��ͼ
          <option value="back3.jpg">У԰ͼ
       </select> <br>
     <input type="submit" value="�ύ" name="submit">
   </form> 
</font></body></Center></HTML>
