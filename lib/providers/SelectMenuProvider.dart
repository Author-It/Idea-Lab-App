import 'package:flutter/material.dart';
import 'package:idealab/models/riven-assets.dart';

class SelectedMenuProvider extends ChangeNotifier {
  late RiveAssets _selectedMenu = sideMenus[0];

  RiveAssets get selectedMenu => _selectedMenu;

  void setSelectedMenu(RiveAssets menu) {
    _selectedMenu = menu;
    notifyListeners();
  }
}
