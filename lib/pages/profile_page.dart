import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idealab/components/ProfilePageButton.dart';
import 'package:idealab/pages/about_us_page.dart';
import 'package:idealab/pages/login_page.dart';
import 'package:idealab/pages/post_events.dart';
import 'package:share_plus/share_plus.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff252738),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 117),
                    height: MediaQuery.of(context).size.height - 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Jo',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 30,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(0, -5))
                                    ],
                                    color: Colors.transparent,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff252738),
                                    decorationThickness: 1.5,
                                  ),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'in AICTE IDEA Lab',
                                      style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                          fontSize: 30,
                                          shadows: [
                                            Shadow(
                                                color: Colors.black,
                                                offset: Offset(0, -5))
                                          ],
                                          color: Colors.transparent,
                                          decoration: TextDecoration.none,
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: FirebaseAuth.instance.currentUser == null
                            ? TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff252738),
                                  side: const BorderSide(
                                      color: Colors.black, width: 2),
                                  fixedSize: const Size(338, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Continue with ID',
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : FirebaseAuth.instance.currentUser?.email ==
                                    "123@timtom.com"
                                ? Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const PostEvents(),
                                            ),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff252738),
                                          side: const BorderSide(
                                              color: Colors.black, width: 2),
                                          fixedSize: const Size(338, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          'Post Events',
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          FirebaseAuth.instance.signOut();
                                          Navigator.pop(context);
                                        },
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff252738),
                                          side: const BorderSide(
                                              color: Colors.black, width: 2),
                                          fixedSize: const Size(338, 50),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          'Sign Out',
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Text("data"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 30,
                          right: 30,
                        ),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Share.share(
                              "Download our app!!!\n\nhttps://play.google.com/store/apps/details?id=com.lnct.bhopal.ac.in.idealab",
                              subject: "LNCT IDEA Lab App",
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // Align text to the start (left)
                                children: [
                                  Text(
                                    "Share!",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff252738),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "If you enjoyed the app.",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff7D7D7D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const FaIcon(
                                FontAwesomeIcons.share,
                                size: 20,
                                color: Color(0xff252738),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 50,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, bottom: 20),
                          child: Row(
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: 'Qu',
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                      fontSize: 30,
                                      shadows: [
                                        Shadow(
                                            color: Colors.black,
                                            offset: Offset(0, -5))
                                      ],
                                      color: Colors.transparent,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xff252738),
                                      decorationThickness: 1.5,
                                    ),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'ick Actions',
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                            fontSize: 30,
                                            shadows: [
                                              Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(0, -5))
                                            ],
                                            color: Colors.transparent,
                                            decoration: TextDecoration.none,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      const SingleChildScrollView(
                        child: Column(
                          children: [
                            ProfileBtn(
                              icon: FontAwesomeIcons.bell,
                              text: "Notifications",
                              nextPage: ProfilePage(),
                            ),
                            ProfileBtn(
                              icon: FontAwesomeIcons.circleInfo,
                              text: "About Us",
                              nextPage: AboutUSPage(),
                            ),
                            ProfileBtn(
                              icon: FontAwesomeIcons.listCheck,
                              text: "Projects",
                              nextPage: ProfilePage(),
                            ),
                            ProfileBtn(
                              icon: FontAwesomeIcons.briefcase,
                              text: "Work at IDEA Lab",
                              nextPage: ProfilePage(),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: const Color(0xffC4C4C4)),
                        child: const Center(
                            child: Icon(CupertinoIcons.arrow_left)),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
