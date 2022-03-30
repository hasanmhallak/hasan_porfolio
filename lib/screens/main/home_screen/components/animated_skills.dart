import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../../../../responsive.dart';

import '../../../../constants.dart';

class AnimatedSkills extends StatelessWidget {
  const AnimatedSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterHtmlCodeText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: Constants.defaultPadding / 2),
          const Text('I '),
          AnimatedTextKit(
            totalRepeatCount: 6,
            animatedTexts: [
              TyperAnimatedText(
                'Build scaleable & maintainable apps.',
                speed: const Duration(milliseconds: 60),
              ),
              if (!Responsive.isMobile(context))
                TyperAnimatedText(
                  'Do authorization using the industry-standard protocol OAuth 2.0.',
                  speed: const Duration(milliseconds: 60),
                ),
              TyperAnimatedText(
                'Handle Errors using functional programing.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Deal with HTTP & HTTP Interceptors.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Write clean code.',
                speed: const Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                'Deal with Firebase Auth and Firestore.',
                speed: const Duration(milliseconds: 60),
              ),
            ],
          ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: Constants.defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterHtmlCodeText(),
        ],
      ),
    );
  }
}

class FlutterHtmlCodeText extends StatelessWidget {
  const FlutterHtmlCodeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: 'flutter',
            style: TextStyle(color: Constants.primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
