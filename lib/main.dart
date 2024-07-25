import 'package:flutter/material.dart';

void main() {
  var james = Person('James Patterson', 'SWE');

  // ignore: -- testing purposes, will remove soon, avoid_print
  print(james.title());
  // ignore: -- testing purposes, will remove soon, avoid_print
  print(james.options);

  runApp(const Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}

class Person {
  var company = 'Branding Brand';
  var name = '';
  var occupation = '';
  
  List options = ['main', 'download', 'experience', 'technology', 'information'];

  String title() {
    return '${(name != '' && occupation != '')
      ? '$name | $company | $occupation | '
      : ''}Interactive Resume';
  }

  Person(this.name, this.occupation);
}
