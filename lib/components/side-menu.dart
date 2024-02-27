import 'package:flutter/material.dart';
import 'package:idealab/components/InfoCard.dart';
import 'package:idealab/models/riven-assets.dart';
import 'package:idealab/pages/events_page.dart';
import 'package:idealab/pages/root_page.dart';
import 'package:idealab/utils/rive_utils.dart';
import 'SideMenuTitle.dart';
import 'package:rive/rive.dart';
import 'package:provider/provider.dart';
import 'package:idealab/providers/SelectMenuProvider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedMenuProvider = Provider.of<SelectedMenuProvider>(context);
    final selectedMenu = selectedMenuProvider.selectedMenu;

    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 288,
      height: height,
      color: const Color(0xFF252738),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InfoCard(name: "Akshat Jain", proff: "Student"),
            ...sideMenus.map(
              (menu) => SideMenuTitle(
                menu: menu,
                press: () {
                  menu.input.change(true);
                  Future.delayed(const Duration(seconds: 1), () {
                    menu.input.change(false);
                  });
                  selectedMenuProvider.setSelectedMenu(menu);

                  // Navigate to the corresponding page when a menu item is clicked
                  switch (menu.route) {
                    case MenuRoutes.events:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RootPage(page: EventPage()),
                          ));
                      break;
                    // Add more cases for other menu items/routes if needed
                    default:
                      break;
                  }
                },
                riveonInit: (artboard) {
                  StateMachineController controller =
                      RiveUtils.getRiveController(artboard,
                          stateMachineName: menu.stateMachineName);
                  menu.input = controller.findSMI("active") as SMIBool;
                },
                isActive: selectedMenu == menu,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
