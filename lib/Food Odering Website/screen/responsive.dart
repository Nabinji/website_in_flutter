import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.desktop,
  });
  // For mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  // For desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 900;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // If our width is more than 900 the we cosider it to desktop
      if (constraints.maxWidth >= 900) {
        return desktop;
      }
      // OtherWise we call it mobile
      else {
        return mobile;
      }
    });
  }
}
