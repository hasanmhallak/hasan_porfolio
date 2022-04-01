// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Contains pre-defined constants which are commonly used accross the app.
abstract class Constants {
  static const primaryColor = Color(0xFFFFC107);
  static const secondaryColor = Color(0xFF242430);
  static const darkColor = Color(0xFF191923);
  static const bodyTextColor = Color(0xFF8B8B8D);
  static const backgroundColor = Color(0xFF1E1E28);
  static const linkedInUrl = 'https://www.linkedin.com/in/hasanmhallak';
  static const twitterUrl = 'https://www.twitter.com/hasanmhallak';
  static const githubUrl = 'https://github.com/hasanmhallak';

  /// Default padding in the app which is [20.0 pixils].
  static const defaultPadding = 20.0;

  /// Default duration in the app which is [1 second].
  static const defaultDuration = Duration(seconds: 1);

  /// Max width of the web page which is [1440.0 pixils].
  static const maxWidth = 1440.0;

  /// Returns the default dark theme with some modifications.
  static ThemeData customTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      canvasColor: backgroundColor,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(
            bodyColor: Colors.white,
          )
          .copyWith(
            bodyText1: const TextStyle(color: bodyTextColor),
            bodyText2: const TextStyle(color: bodyTextColor),
          ),
    );
  }
}
