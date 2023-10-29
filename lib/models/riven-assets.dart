import 'package:rive/rive.dart';

class RiveAssets {
  final String artboard, stateMachineName, title, src;
  late SMIBool input;

  RiveAssets(
    this.src, {
    required this.stateMachineName,
    required this.title,
    required this.artboard,
  });

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAssets> sideMenus = [
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "HOME_interactivity", title: "Home", artboard: "HOME"),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "SEARCH_Interactivity",
      title: "Search",
      artboard: "SEARCH"),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "STAR_Interactivity",
      title: "Favorites",
      artboard: "LIKE/STAR"),
  RiveAssets("assets/images/icons.riv",
      stateMachineName: "CHAT_Interactivity", title: "Help", artboard: "CHAT"),
];
