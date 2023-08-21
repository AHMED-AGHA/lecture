void main() {
  String fruit = 'Apple';
  switch (fruit) {
    case 'apple':
    case 'Apple':
      label1:
      print('Selected fruit is an apple');
      continue label2;
    label2:
    case 'banana':
      print('Selected fruit is a banana');
      break;
    label3:
    case 'orange':
      print('Selected fruit is an orange');
      break;

    default:
      print('Selected fruit is not recognized');
  }

  var t = switch ('success') {
    'success' => print('Selected fruit is not recognized'),
    'banana' => '',
    'orange' => '',
    _ => "Error"
  };
}
