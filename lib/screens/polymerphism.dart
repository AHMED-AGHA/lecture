abstract class Car {
  final String name;
  final int year;

  Car(this.name, this.year);

  void printDetails() => print('Name : $name - Year : $year');

  void Engine();
}

class Hyundai extends Car {

  Hyundai(super.name, super.year);

  @override
  void Engine() {
    print('hello world'); // TODO: implement Engine
  }
}

void main() {
  // Car car = Car();
  Car car = Hyundai("KIA", 2021);
    car.Engine();
    car.printDetails();
}
