void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];
  double average = calculateAverage(grades);
  int roundedAverage = average.round();

  if (roundedAverage >= 70) {
    print("Average grade: $roundedAverage - Passed");
  } else {
    print("Average grade: $roundedAverage - Failed");
  }
}

double calculateAverage(List<int> grades) {
  int sum = 0;

  for (int grade in grades) {
    sum += grade;
  }

  return sum / grades.length;
}