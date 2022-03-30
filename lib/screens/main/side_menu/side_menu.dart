import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/experience/experience.dart';
import 'components/profile_info/profile_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
        child: Column(
          children: const [
            ProfileInfo(),
            Experience(),
          ],
        ),
      ),
    );
  }
}
