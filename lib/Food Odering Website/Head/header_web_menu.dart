import 'package:flutter/material.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        menuItems("Home"),
        menuItems("Favorite"),
        menuItems("About"),
        menuItems("Review"),
        menuItems("Them"),
      ],
    );
  }

  Padding menuItems(name) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {},
        child: Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
