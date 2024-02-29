import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Column(children: [
            Stack(
              children: [
                // Container(
                //   height: MediaQuery.of(context).size.height * 0.8,
                //   width: double.infinity,
                //   decoration: const BoxDecoration(
                //     color: Color(0xff252738),
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(20),
                //       topRight: Radius.circular(20),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 190),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 100),
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
                                    decorationColor: Colors.blue,
                                    decorationThickness: 1.5,
                                  ),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'in AICTE Idea Lab',
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
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff252738),
                          side: const BorderSide(color: Colors.black, width: 2),
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
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 50,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
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
                      child:
                          const Center(child: Icon(CupertinoIcons.arrow_left)),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
