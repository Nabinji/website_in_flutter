import 'package:flutter/material.dart';

import '../NavBar/navbar.dart';
import 'main_page.dart';

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
              Color.fromARGB(255, 120, 187, 241),
              // Color.fromARGB(255, 145, 211, 22),

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
