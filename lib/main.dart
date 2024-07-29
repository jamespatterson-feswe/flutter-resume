import 'package:flutter/material.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
          backgroundColor: Colors.yellow[200],
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                tooltip: 'To Be Decided',
                onPressed: () {},
              )
            ],
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(2.0),
                child: Container(
                  color: Colors.yellow[300],
                  height: 2.0,
                )),
          )),
    );
  }
}
