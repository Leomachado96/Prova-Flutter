import 'package:flutter/material.dart';
import 'package:prova_flutter/views/home.dart';
import 'package:prova_flutter/views/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => MyHomePage(),
        '/principal': (context) => Principal()
      },
    );
  }
}
