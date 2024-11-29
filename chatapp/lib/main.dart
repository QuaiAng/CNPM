import 'package:chatapp/screens/Home_Screen.dart';
import 'package:chatapp/screens/Login_Screen.dart';
import 'package:chatapp/screens/Main_Screen.dart';
import 'package:chatapp/screens/Register_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/main': (context) => const MainScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
