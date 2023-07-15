import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/src/routes.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: LoginPage(),
      initialRoute: MyRoutes.login.name,
      routes: routes,
    );
  }
}