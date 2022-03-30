import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import '../../responsive.dart';

import '../../constants.dart';
import '../../models/projects.dart';
import 'home_screen/home_screen.dart';
import 'side_menu/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: Constants.backgroundColor,
              leading: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                );
              }),
            ),
      drawer: SideMenu(),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: Constants.maxWidth,
            // maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  child: SideMenu(),
                ),
              SizedBox(width: Constants.defaultPadding),
              Expanded(
                flex: 3,
                child: HomeScreen(),
              ),
              SizedBox(width: Constants.defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsGridBuilder extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const ProjectsGridBuilder({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _width = MediaQuery.of(context).size.width;
        int checkWidth() {
          if (_width < 420) {
            return 1;
          } else if (Responsive.isMobile(context)) {
            return 3;
          } else {
            return 4;
          }
        }

        return GridView.builder(
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            mainAxisSpacing: Constants.defaultPadding,
            crossAxisSpacing: Constants.defaultPadding,
          ),
          itemCount: projects.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Constants.secondaryColor,
              padding: const EdgeInsets.all(Constants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projects[index].title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    projects[index].description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: checkWidth(),
                    style: const TextStyle(height: 1.5),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () async {
                      await url.launch(projects[index].url);
                    },
                    child: const Text(
                      'Read more>>',
                      style: TextStyle(color: Constants.primaryColor),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
