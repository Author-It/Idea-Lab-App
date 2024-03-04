import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  bool b1 = false;

  bool b2 = true;

  bool b3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                // Changed from Column to Row
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'E',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 32,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(0, -5),
                            )
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff252738),
                          decorationThickness: 1.5,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'vents & Seminars',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              fontSize: 32,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, -5),
                                )
                              ],
                              color: Colors.transparent,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text("Lakshmi Narain College of Technology, Bhopal"),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        b1 = true;
                        b2 = false;
                        b3 = false;
                      });
                    },
                    child: Text(
                      'Upcoming',
                      style: GoogleFonts.lato(
                        textStyle: b1
                            ? const TextStyle(
                                fontSize: 14,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(0, -5),
                                  )
                                ],
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff252738),
                                decorationThickness: 1.5,
                              )
                            : const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        b1 = false;
                        b2 = true;
                        b3 = false;
                      });
                    },
                    child: Text(
                      'Ongoing',
                      style: GoogleFonts.lato(
                        textStyle: b2
                            ? const TextStyle(
                                fontSize: 14,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(0, -5),
                                  )
                                ],
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff252738),
                                decorationThickness: 1.5,
                              )
                            : const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        b1 = false;
                        b2 = false;
                        b3 = true;
                      });
                    },
                    child: Text(
                      'Past Events',
                      style: GoogleFonts.lato(
                        textStyle: b3
                            ? const TextStyle(
                                fontSize: 14,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(0, -5),
                                  )
                                ],
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff252738),
                                decorationThickness: 1.5,
                              )
                            : const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
