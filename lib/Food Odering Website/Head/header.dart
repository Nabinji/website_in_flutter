import 'package:flutter/material.dart';
import 'package:flutter_web/Food%20Odering%20Website/Head/header_web_menu.dart';
import 'package:flutter_web/Food%20Odering%20Website/screen/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // For mobile
        if (!Responsive.isDesktop(context))
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu))),
        // Site name and icon
        Image.asset(
          "assets/images/logo.png",
          height: 100,
          width: 100,
        ),
        const Text(
          "PizzaHub",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              elevation: 17,
              minimumSize: const Size(25, 44)),
          onPressed: () {},
          child: const Text(
            "Join",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
