import 'package:rive/rive.dart';

enum MenuRoutes {
  home,
  events,
  projects,
  bookshelf,
  contact_us,
  highlights,
  notifications,
}

class RiveAssets {
  final String artboard, stateMachineName, title, src;
  late SMIBool input;
  final MenuRoutes route;

  RiveAssets(
    this.src, {
    required this.stateMachineName,
    required this.title,
    required this.artboard,
    this.route = MenuRoutes.home,
  });

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAssets> sideMenus = [
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "HOME_interactivity",
      title: "Home",
      artboard: "HOME",
      route: MenuRoutes.home),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "SEARCH_Interactivity",
      title: "Events",
      artboard: "SEARCH",
      route: MenuRoutes.events),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "STAR_Interactivity",
      title: "Favorites",
      artboard: "LIKE/STAR",
      route: MenuRoutes.projects),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "CHAT_Interactivity",
      title: "Notifications",
      artboard: "CHAT",
      route: MenuRoutes.notifications),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "STATE MACHINE 1",
      title: "Profile",
      artboard: "PROFILE",
      route: MenuRoutes.contact_us),
];
