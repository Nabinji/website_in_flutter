import 'package:flutter/material.dart';
import 'package:flutter_web/MainPage/main_page.dart';
import 'package:flutter_web/NavBar/navbar.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Colors.pink,
              Colors.deepPurpleAccent,
            ])),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              MainPage(),
            ],
          ),
        ),
      ),
    );
  }
}
