import 'package:flutter/material.dart';
import '../../../../responsive.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import '../../../../constants.dart';
import 'animated_skills.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.8 : 2.5,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'images/cover.jpg',
            fit: Responsive.isMobile(context) ? BoxFit.fill : BoxFit.fitWidth,
            filterQuality: FilterQuality.high,
          ),
          Container(
            color: Colors.black.withOpacity(0.75),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my Amazing\nArt Space!',
                  style: !Responsive.isMobileLarge(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: Constants.defaultPadding),
                FittedBox(child: const AnimatedSkills()),
                const SizedBox(height: Constants.defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Constants.primaryColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: Constants.defaultPadding * 2,
                          vertical: Constants.defaultPadding,
                        )),
                    onPressed: () async {
                      await url.launch(Constants.gitlabUrl);
                    },
                    child: const Text(
                      'Explore Now',
                      style: TextStyle(color: Constants.darkColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
