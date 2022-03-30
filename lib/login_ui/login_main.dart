import 'package:flutter/material.dart';
import 'package:wather_ui_demo/login_ui/welcome_screen.dart';

void main() {
  runApp(const MyLoginApp());
}

class MyLoginApp extends StatelessWidget{
  const MyLoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: const WelcomeScreen(),
   );
  }
}
