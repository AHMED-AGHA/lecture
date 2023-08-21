class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

void changePeronDetails(Person person) {
  person.name = "Alaa";
  person.age = 50;
}
void main() {
  var person = Person('Ali', 20);
  print("Befor Edit : ${person.name} And ${person.age}");
  changePeronDetails(person);
  print("After Edit : ${person.name} And ${person.age}");
}
