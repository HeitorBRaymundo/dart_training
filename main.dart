import 'package:meta/meta.dart';

// Everything in Dart is an object
// An uninitialized variable hve an initial value of null

void main(List<String> arguments) {
  
  print(arguments);
  // String constructor
  String university = 'Unicamp';

  print('-- String constructor ----------');
  print('I\'m  going to gratuated at $university in august.');

  print('\n-- Operations with arrays ----------');
  List<int> listOfNumbers = [1, 2, 3, 4, 5];
  List<int> nullList;

  var anotherListOfNumber = [0, ...listOfNumbers];
  var nullAwareSpreadOperator = [0, ...?nullList];

  print('anotherListOfNumber:  $anotherListOfNumber');
  print('nullAwareSpreadOperator: $nullAwareSpreadOperator');

  // Dart’s type safety means that you can’t use code like if (nonbooleanValue)
  // Instead, explicitly check for values
  List<int> evenValues =
      listOfNumbers.where((value) => value % 2 == 0).toList();
  var evenValuesType = evenValues.runtimeType;
  print('evenValues: $evenValues ($evenValuesType)');

  var doubleValues = listOfNumbers.map((value) => value * 2);
  var doubleValuesType = doubleValues.runtimeType;
  print('doubleValues: $doubleValues ($doubleValuesType)');

  print('\n-- Functions ----------');
  print('isEven(2)');
  print(isEven(2));
  print('isEvenShorthand(3)');
  print(isEvenShorthand(3));

  print('\nNamed parameters:');
  print('\nnamedParameters(name: \'Heitor\', lastName: \'Raymundo\')');
  print(namedParameters(name: 'Heitor', lastName: 'Raymundo'));
  print(namedParameters(lastName: 'Raymundo', name: 'Heitor'));

  print('\nRequired parameters:');
  print('\nrequiredParameters(name: \'Heitor\', cpf: \'32112332122\')');
  String textFromRequiredParams =
      requiredParameters(name: 'Heitor', cpf: '32112332122');
  print(textFromRequiredParams);

  print('\nPositional parameters:');
  print(positionalParameters('Heitor', 'yup'));
  print(positionalParameters('Heitor', 'yup', 'smoke'));
  print(positionalParameters(
      'Heitor', 'yup', 'smoke', DateTime.now().toString()));
}

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
