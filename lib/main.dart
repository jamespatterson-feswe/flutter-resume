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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            title: Center(
              child: Text(james.title()),
            ),
            backgroundColor: Colors.white70,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'To Be Decided',
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                tooltip: 'To Be Decided',
                onPressed: () {},
              )
            ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: (MediaQuery.of(context).size.height / 3),
                width: MediaQuery.of(context).size.width,
                color: Colors.red),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white
              )
            ),
            Container(
                height: (MediaQuery.of(context).size.height / 3),
                width: MediaQuery.of(context).size.width,
                color: Colors.blue
            ),
          ],
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
    return '${(name != '' && occupation != '') ? '$name | $occupation | ' : ''}Interactive Resume';
  }

  Person(this.name, this.occupation);
}
