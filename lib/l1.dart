enum Day { saturday, sunday, monday }

void main() {
  Map<String, int> studentAge = {
    "ahmed": 60,
    "ali": 99,
    "othman": 85,
    "hasan": 80,
    "hamada": 100,
  };
  print(studentAge['ali']);
  studentAge['ali'] = 98;
  studentAge['aliagha'] = 101;
  studentAge.remove('aliagha');
  print(studentAge.length);
  print(studentAge.containsKey('aliagha'));

  studentAge.forEach((key, value) {
    print("The Key Is : $key - value is $value");
  });
}
