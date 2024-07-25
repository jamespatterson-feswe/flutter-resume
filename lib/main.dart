import 'package:flutter/material.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    var james = Person('James Patterson', 'SWE');
    
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            // color: Color.fromRGBO(50, 48, 50, 100),
            child: Center(
              child: Text(james.title())
            )
          ),
        ),
      ),
    );
  }
}

class Person {
  var company = 'Branding Brand';
  var name = '';
  var occupation = '';

  List<String> options = [
    'main',
    'download',
    'experience',
    'technology',
    'information'
  ];

  String title() {
    return '${(name != '' && occupation != '') ? '$name | $company | $occupation | ' : ''}Interactive Resume';
  }

  Person(this.name, this.occupation);
}
