import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: 288,
      height: double.infinity,
      color: const Color(0xFF17203A),
      child: SafeArea(
          child: Column(
        children: [
          const InfoCard(),
          ListTile(
            leading: SizedBox(
              height: 34,
              width: 34,
              child: RiveAnimation.asset(
                "assets/images/icons.riv",
                artboard: "HOME",
                onInit: (artboard) {},
              ),
            ),
            title: const Text("Home", style: TextStyle(color: Colors.white)),
          )
        ],
      )),
    ));
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        "NAME",
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        "SOMETHING",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
