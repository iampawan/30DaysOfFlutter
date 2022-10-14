import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
                                                                                          //final int days = 30;
  final String name = "Mohd Asrar Ahmed";

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Center(
        child:
        Text("Welcome to Quiz App created with love by $name {-.-}"),
      ),
      drawer: const Drawer(),
    );
  }
}