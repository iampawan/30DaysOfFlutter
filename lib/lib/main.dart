import 'package:flutter/material.dart';
import './login_page.dart';
import './route_page.dart';
import './home_page.dart';
import './main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: const MainMenu(),
    theme: ThemeData(
    primarySwatch: Colors.deepPurple,
    ),
    darkTheme: ThemeData(
    brightness: Brightness.dark,
    ),
    routes: {
    "/": (context) => const LoginPage(),
    MyRoutes.homeRoute: (context) =>  const HomePage(),
    MyRoutes.loginRoute: (context) =>  const LoginPage()
    },
    debugShowCheckedModeBanner: false,
    );
  }
}



