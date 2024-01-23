import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HeaderContaion extends StatelessWidget {
  const HeaderContaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            const Expanded(flex: 3, child: HeaderBody()),
            Expanded(flex: 2, child: Image.asset("assets/images/pizza2.png"))
          ],
        )
      ],
    );
  }
}

// for mobile
class MobileHeaderContain extends StatelessWidget {
  const MobileHeaderContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/pizza2.png",
          height: 300,
          width: 350,
        ),
        const HeaderBody()
      ],
    );
  }
}

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AutoSizeText(
          "Eat Today",
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 53),
        ),
        const SizedBox(
          height: 10,
        ),
        const AutoSizeText(
          "Live another day",
          maxLines: 1,
          style: TextStyle(fontSize: 53),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome to Pizza Hub, your premier online pizza destination! Indulge in a symphony of flavors with our diverse menu. Customize your perfect pizza, explore tempting sides, and enjoy a seamless ordering experience. Join us in savoring excellence – welcome to a world of taste, welcome to Pizza Hub! 🍕🌐",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black54),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: "Search your favorite items",
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: OutlinedButton(
            style:
                OutlinedButton.styleFrom(backgroundColor: Colors.amberAccent),
            onPressed: () {},
            child: const Text(
              "Order Now",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
