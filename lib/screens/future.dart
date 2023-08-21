Future<int> fetchNumber() async {
  var result = await Future.delayed(const Duration(seconds: 4), () {
    return 42; // Simulated result after 2 seconds
  });
  return result;
}

void main() async{
  print('Start');
  var t = await fetchNumber();
  print(t);
  print('End');
}
