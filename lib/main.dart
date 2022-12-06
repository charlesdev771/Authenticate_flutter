import 'package:authenticate/bemvindo_page.dart';
import 'package:flutter/material.dart';import 'bemvindo_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authenticate',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: BemVindoPage(),

        ),
    );
  }
}

