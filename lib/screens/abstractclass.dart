import 'package:lecture4/screens/constructorandvariable.dart';
import 'package:lecture4/screens/inheritance.dart';

abstract class Data{
  void sum(); //abstract method

  void subtract() {}//Normal method
}


class Operations extends Data{
  @override
  void sum() {
    // TODO: implement sum
  }

  @override
  void subtract() {
    // TODO: implement subtract
    super.subtract();
  }

}


void main() {


}
