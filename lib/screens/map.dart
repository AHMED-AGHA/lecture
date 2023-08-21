void main() {
  Map<String, int> studentAge = {
    "ahmed": 100,
    "ali": 50,
    "othman": 40,
    "ibrahim": 97,
  };

  print(studentAge.length);
  print(studentAge.values);
  print(studentAge.keys);
  print(studentAge.containsKey("ahmed"));
  studentAge["Ahmed"] = 80;
  studentAge.forEach((key, value) {
    print("The Key Is : $key and value Is : $value");
  });
}
