import 'project.dart';

List<Project> get projects => List.unmodifiable(_projects);

const _projects = <Project>[
  Project(
    title: "Repo Viewer",
    url: 'https://github.com/hasanmhallak/Repo-Viewer#repo-viewer',
    description:
        "A production grade app to view all your starred project in your Github account.\nYou can star & unstar projects easily and search for any repository using the amazing floating search bar.\nYou can also view the README.md file that is associated with each project.\nStores data locally to support offline mode.",
  ),
  Project(
    title: "Todoey",
    url: 'https://github.com/hasanmhallak/Todoey#todoey',
    description:
        "A very lightweight To-Do app that have a beautiful and friendly user interface.\nStores data locally using SQLite.",
  ),
  Project(
    title: "Personal Portfolio",
    url: 'https://github.com/hasanmhallak/hasan_porfolio#hasan-portfolio',
    description: "Needless to say more. It's this amazing website!",
  ),
];
