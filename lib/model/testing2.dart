


import 'dart:io';

void main() {
  print('Start');
  print('Fetching data...');
  String data = fetchData();
  print('Data received: $data');
  print('End');
}

String fetchData() {

  // Simulating a time-consuming operation
  sleep(const Duration(seconds: 2));
  return 'Data from the server';
}


abstract mixin class b {
  void f();
  void g(){}
}


class D extends b{
  @override
  void f() {
    // TODO: implement f
  }
}



// void main() async {
//   print('Start');
//   print('Fetching data...');
//   String data = await fetchData();
//   print('Data received: $data');
//   print('End');
// }
//
// Future<String> fetchData() async {
//   // Simulating a time-consuming operation
//   await Future.delayed(const Duration(seconds: 2));
//   return 'Data from the server';
// }