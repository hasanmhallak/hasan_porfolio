import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import '../../../../../constants.dart';
import 'age_and_location/age_and_location.dart';
import 'contact_info.dart';
import 'download_cv.dart';
import 'skills/skills.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        controller: ScrollController(),
        children: [
          SizedBox(height: Constants.defaultPadding / 2),
          // AgeAndLocation(),
          // Divider(),
          // SizedBox(height: Constants.defaultPadding / 2),
          Skills(),
          Divider(),
          SizedBox(height: Constants.defaultPadding / 2),
          Text('Contact Me', style: Theme.of(context).textTheme.subtitle2),
          SizedBox(height: Constants.defaultPadding / 2),
          Row(
            children: [
              TextButtonTheme(
                data: TextButtonThemeData(
                    style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent))),
                child: TextButton(
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: Constants.backgroundColor,
                      shadowColor: Constants.backgroundColor,
                      onSurface: Constants.backgroundColor,
                      enableFeedback: false,
                    ),
                    onPressed: () async {
                      await url.launch('sms:+201288865640');
                    },
                    child: Text('+201288865640')),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: Constants.defaultPadding / 2),

          Row(
            children: [
              TextButtonTheme(
                data: TextButtonThemeData(
                    style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent))),
                child: TextButton(
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: Constants.backgroundColor,
                      shadowColor: Constants.backgroundColor,
                      onSurface: Constants.backgroundColor,
                      enableFeedback: false,
                    ),
                    onPressed: () async {
                      await url.launch('mailto:hasanm.hallak@gmail.com');
                    },
                    child: Text('hasanm.hallak@gmail.com')),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: Constants.defaultPadding / 2),
          DownloadCV(),
          ContactInfo(),
        ],
      ),
    );
  }
}
