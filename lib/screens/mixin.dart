mixin A{
  void sum();
  void subtract(){}
}

mixin A1{
  void sum1();
  void subtract(){}
}

class C with A , A1{
  @override
  void sum() {
    // TODO: implement sum
  }

  @override
  void sum1() {
    // TODO: implement sum1
  }


}


