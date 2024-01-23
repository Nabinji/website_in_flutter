import 'package:flutter/material.dart';
import 'package:flutter_web/Food%20Odering%20Website/Footer/footer_menu.dart';
import 'package:flutter_web/Food%20Odering%20Website/screen/responsive.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[200],
      child: Container(
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(maxWidth: 1233),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Text(
                        "PizzaHub",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialMedial(
                              "https://cdn.iconscout.com/icon/free/png-256/free-facebook-2038471-1718509.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          socialMedial(
                            "https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          socialMedial(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/X_logo_2023_original.svg/300px-X_logo_2023_original.svg.png")
                        ],
                      )
                    ],
                  ),
                ),
                if (Responsive.isDesktop(context))
                  const Expanded(flex: 3, child: FooterMenu()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (!Responsive.isDesktop(context)) const FooterMenu(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Container socialMedial(image) {
    return Container(
      height: 35,
      width: 35,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Image.network(image),
    );
  }
}
