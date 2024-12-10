
import 'dart:math';
class Student {
  String name ="";
  String  grade="";
  int age=0;
  int id=0;
  Student (this.name,this.grade,this.age){
    id=generat_id();
  }
  int generat_id() {
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      return randomNumber;
  }
  void printinfo(Student st){
    print("******************************");
    print(" name  : ${st.name} ");
    print(" grade : ${st.grade} ");
    print(" age   : ${st.age} ");
    print(" id    : ${st.id} ");
    print("******************************");
  }
  void upgrad(String newgrad ,Student st){
    if(newgrad.length>3){
     st.grade=newgrad;}
     else{
      print("please enter grade as A+ not more letter ");
     }
  }
}