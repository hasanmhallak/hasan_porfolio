import 'package:flutter/material.dart';
import '../../../../../responsive.dart';

import '../../../../../constants.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        color: Constants.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Responsive.isMobile(context)) const SizedBox(height: 30),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
            // const SizedBox(height: 3),
            Text(
              'Hasan M. Hallak',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            // const SizedBox(height: 3),
            const Text(
              'Junior Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
