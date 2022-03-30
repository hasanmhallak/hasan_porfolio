import 'package:flutter/material.dart';

import '../../../../../../constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double value;
  final String text;
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(
        begin: 0,
        end: value,
      ),
      duration: Constants.defaultDuration,
      builder: (context, double value, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text('${(value * 100).toInt()}%'),
              ],
            ),
            const SizedBox(height: 3),
            LinearProgressIndicator(
              value: value,
              color: Constants.primaryColor,
              backgroundColor: Constants.darkColor,
            ),
          ],
        );
      },
    );
  }
}
