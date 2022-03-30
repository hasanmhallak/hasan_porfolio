import 'project.dart';

List<Project> get projects => List.unmodifiable(_projects);

const _projects = <Project>[
  Project(
    title: "Repo Viewer",
    url: 'https://github.com/hasanmhallak/Repo-Viewer#repo-viewer',
    description:
        "A great App to view all your starred project in your Github account.\nYou can star & unstar projects easily and search for any repository using the amazing floating search bar.\nYou can also view the README.md file that is associated with each project.\nStores data locally to support offline mode.",
  ),
  Project(
    title: "Todoey",
    url: 'https://github.com/hasanmhallak/Todoey#todoey',
    description:
        "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    title: "Personal Portfolio",
    url: 'lol',
    description:
        "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  ),
  // Project(
  //   title: "Chat/Messaging App Light and Dark Theme - Flutter UI",
  //   description:
  //       "Today we gonna build messing/chat app #ui using #flutter that runs both Android and iOS devices also has a dark and light theme. We create in total 4 screens all of that support both Dark Theme and Light Theme. At first, we design a welcome screen that contains an image with a tag line also has a skip button.",
  // ),
  // Project(
  //   title: "Welcome page, Login Page and Sign up page - Flutter UI",
  //   description:
  //       "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
  // ),
  // Project(
  //   title: "Covid-19 App - Flutter UI",
  //   description:
  //       "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
  // ),
];
