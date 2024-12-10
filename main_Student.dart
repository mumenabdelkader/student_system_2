import 'dart:io';
import 'Student.dart';
void display(){
  print(" 1.creat new student  ");
  print(" 2. View student ");
  print(" 3. Exit ");
  print(" ");
  print(" enter the number of your opration ");
  
}
void main(){

  List<Student> list=[];
  while(true){
    display();
    int? num =int.parse(stdin.readLineSync()!);
     if(num==1){
      print("enter the name ");
        String? name= stdin.readLineSync();
      print("enter the grade ");
        String? grade= stdin.readLineSync();
       print("enter the age ");
      int? age =int.parse(stdin.readLineSync()!);
        Student st=Student(name!,grade!,age);
           print(" your id is : ${st.id}");
        list.add(st);
        }
        else if (num==2){
              print(" enter your id ");
              int? id =int.parse(stdin.readLineSync()!);
                          for (int i=0;i<list.length;i++){
                            if (id==list[i].id){
                              list[i].printinfo(list[i]);
                              break;
                            }
                            else {
                              print("this student is not found ");
                            }
              }
        }
        else{
          break;
        }
  }
}