import 'package:flutter/material.dart';
import 'package:flutter_web/Food%20Odering%20Website/Head/header.dart';
import 'package:flutter_web/Food%20Odering%20Website/Head/header_contain.dart';
import 'package:flutter_web/Food%20Odering%20Website/screen/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[200],
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            constraints: const BoxConstraints(maxWidth: 1233),
            child: Column(
              children: [
                // Header icon and name
                const Header(),
                Responsive.isDesktop(context)
                    ? const HeaderContaion()
                    : const MobileHeaderContain(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
