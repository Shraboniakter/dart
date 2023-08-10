void main(){
  List<int> grades = [85, 92, 78, 65, 88, 72];
  int sum=0;

  for (int grade in grades) {
    sum+=grade;
}
  double average= sum/grades.length;
  print(average);
  if(average>=70){
    print("passed");
  }else{
    print("Filed");
  }

}