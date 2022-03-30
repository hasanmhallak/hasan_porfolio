import 'package:flutter/material.dart';
import '../../../responsive.dart';

import '../../../constants.dart';
import '../../../models/projects.dart';
import '../main_screen.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        if (MediaQuery.of(context).size.width > 340) const HomeBanner(),
        const SizedBox(height: Constants.defaultPadding / 2),
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: Constants.defaultPadding),
        const Responsive(
          mobile: ProjectsGridBuilder(
            crossAxisCount: 1,
            childAspectRatio: 2.5,
          ),
          mobileLarge: ProjectsGridBuilder(
            childAspectRatio: 1.1,
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridBuilder(),
          desktop: ProjectsGridBuilder(),
        ),
      ],
    );
  }
}
