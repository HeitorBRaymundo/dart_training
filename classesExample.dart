mixin User {
  String login = '';
  String password = '';

  void LogIn() {
    print('$login was successfully logged to the system.');
  }
}

class Point {
  double x, y;

  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }

  // A short way to assigning a constructor
  // Point(this.x, this.y);

  // Named constructors
  Point.origin() {
    x = 0;
    y = 0;
  }

  Point.withAssert(this.x, this.y) : assert(x >= 0) {
    print('In Point.withAssert(): ($x, $y)');
  }

  Point.alongXAxis(double x) : this(x, 0);
}

class Person {
  String firstName;

  Person.fromJson(Map data) {
    this.firstName = data['firstName'];
  }
}

class Employee extends Person with User {
  Employee.fromJson(Map data) : super.fromJson(data) {
    this.login = this.firstName;
  }
  // or just
  // Employee(Map data) : super.fromJson(data);
}
