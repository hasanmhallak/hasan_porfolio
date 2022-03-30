import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import '../../../../../constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        IconButton(
          splashRadius: 16,
          onPressed: () async {
            await url.launch(Constants.linkedInUrl);
          },
          icon: SvgPicture.asset('icons/linkedin.svg'),
        ),
        IconButton(
          splashRadius: 16,
          onPressed: () async {
            await url.launch(Constants.gitlabUrl);
          },
          icon: SvgPicture.asset('icons/gitlab.svg'),
        ),
        IconButton(
          splashRadius: 16,
          onPressed: () async {
            await url.launch(Constants.twitterUrl);
          },
          icon: SvgPicture.asset('icons/twitter.svg'),
        ),
        const Spacer(),
      ],
    );
  }
}
