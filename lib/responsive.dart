import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget mobileLarge;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.mobileLarge,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 515;
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 750;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.width.toInt();
    if (_size > 1024) {
      return desktop;
    } else if (_size >= 700) {
      return tablet;
    } else if (_size >= 515) {
      return mobileLarge;
    } else {
      return mobile;
    }
  }
}
