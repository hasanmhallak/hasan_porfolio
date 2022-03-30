import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import 'animated_lpi.dart';
import 'knowledge.dart';

List<Widget> get animatedIndicators => List<Widget>.unmodifiable(const [
      AnimatedLinearProgressIndicator(text: 'Dart', value: 0.9),
      SizedBox(height: Constants.defaultPadding),
      AnimatedLinearProgressIndicator(text: 'Flutter', value: 0.75),
      SizedBox(height: Constants.defaultPadding),
      AnimatedLinearProgressIndicator(text: 'Firebase', value: 0.55),
      SizedBox(height: Constants.defaultPadding),
      AnimatedLinearProgressIndicator(
        text: 'Domain-Driven-Development',
        value: 0.5,
      ),
      SizedBox(height: Constants.defaultPadding),
    ]);

List<Widget> get knowledge => List<Widget>.unmodifiable(const [
      SizedBox(height: Constants.defaultPadding),
      Knowledge('Object-Oriented Programming (OOP)'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('Clean Code'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('SOLID Design Principles'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('OAuth 2.0 Authentication'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('REST APIs'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('Git'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('Debugging Code'),
      SizedBox(height: Constants.defaultPadding),
      Knowledge('Problem Solving'),
      SizedBox(height: Constants.defaultPadding),
    ]);
