// class User {
//  late String name;
//  late String email;
//  late int age;
// User();
//  User.DD();
// }

// 1) UN-Named - Default (Sugar) - default zero paramatarized Con.
// User(){}

// 2) UN-Named - Default (Sugar) - default zero paramatarized (NO BODY) Con.
// User();
// 3) Un-Named - Default (Sugar) - default parametarized (Body) Con.
// User(String name){
// this.name = name;
// }
// 4) Un-Named - Default (Sugar) - Positional parametarized Con.
// User(this.name, this.email, this.age);
// 5) Un-Named - Default (Sugar) - List Con.
// User(String name, String email, int age) : age = age, name = name, email = email;
// User(String name, this.email, this.age) : name = name;
// 6) Un-Named - Default (Sugar) - [Optional Ordered] Cons.
// User(this.name, [this.email, this.age = 0]);
// User(this.name, [String email = &#39;&#39; , this.age = 0]) : email = email;
// 7) Un-Named - Default (Sugar) - {Optional UN-ORDERED NAMED PARAMS} Cons.
// User(this.name, {this.email, this.age = 0});
// User(this.name, {this.email, required this.age});
// User(this.name, { String? email, required this.age}) : email = email;
// User(this.name,{ int age= 0, required this.email}): age = age;
// 8) NAMED Cons.
// User.first(this.name,{required this.email, int age = 0}) : age = age;
// User.second({required this.name, int age= 0, required this.email}): age = age;
// 9) Named - Private Cons.
// User._();
// }