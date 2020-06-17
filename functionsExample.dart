import 'package:meta/meta.dart';

bool isEven(int number) {
  return number % 2 == 0;
}

bool isEvenShorthand(int number) => number % 2 == 0;

String namedParameters({String name, String lastName}) {
  return '$name  $lastName';
}

String requiredParameters({String name, @required String cpf}) {
  return '$name with document $cpf';
}

String positionalParameters(String from, String msg,
    [String device, String date]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (date != null) {
    result = '$result on $date';
  }

  return result;
}