import 'package:lecture4/screens/constructorandvariable.dart';
import 'package:lecture4/screens/user.dart';

 class UserForInheritance {
  final String name = "";
  String? _age;
  static String? staticname;


  ///////////////////////////////////////////////////
  void sum() {
    print("Vision");
  }

  void _subtractPrivate() {}

  static subtract() {}

//static String? staticname;
// final String? name1 = "vision plus";
// String? name2;


}


class Emplyee extends UserForInheritance{

@override
  void sum() {
    // TODO: implement sum
    super.sum();
  }

}



















void main() {
  // Employee employee = Employee();
  // employee.sum();


}













// final class User {
//   String name;
//
//   User(this.name);
//
//   void sum() {}
//
//   static _subtract() {}
//
//   void _subtractPrivate() {}
// }

//single inheritance
//hierarchical inheritance
//multilevel inheritance
