package mybean.data;
public class Example7_10_Bean{
   String id ;           //��ſ���
   float score;         //��ŷ���
   String questions;    //�����Ŀ
   int number;         //������
   int textAmount=3 ; //��Ŀ����
   String choiceA,choiceB,choiceC,choiceD;//���ѡ��
   String image;   //��Ŀ��ʾ��ͼ��ͼ���ļ���
   String answer;       //����û������Ĵ�
   String correctAnswer; //�����ȷ��
   String mess;       //�����ʾ��Ϣ 
   public String getCorrectAnswer() {
      return correctAnswer;
   }
   public void setCorrectAnswer(String s){
      correctAnswer =s;
   }
   public void setId(String s){
      id=s;
   }
   public String getId(){
      return id;
   }
   public void setScore(float s) {
      score = s;
   }
   public float getScore() {
      return score;
   }
   public void setQuestions(String s){
      questions=s;
   }
   public String getQuestions(){
      return questions;
   }
   public void setNumber(int s){
      number=s;
   }
   public int getNumber(){
      return number;
   }
   public void setChoiceA(String s){
      choiceA=s;
   }
   public String getChoiceA(){
      return choiceA;
   }
    public void setChoiceB(String s){
      choiceB=s;
   }
   public String getChoiceB(){
      return choiceB;
   }
    public void setChoiceC(String s){
      choiceC=s;
   }
   public String getChoiceC(){
      return choiceC;
   }
   public void setChoiceD(String s){
      choiceD=s;
   }
   public String getChoiceD(){
      return choiceD;
   }
   public void setImage(String s){
      image=s;
   }
   public String getImage(){
      return image;
   } 
   public void setAnswer(String s){
      answer=s;
   }
   public String getAnswer(){
      return answer;
   } 
   public void setMess(String s){
      mess=s;
   }
   public String getMess(){
      return mess;
   }
   public void setTestAmount(int s){
      textAmount=s;
   }
   public int getTestAmount(){
      return textAmount;
   } 
}
