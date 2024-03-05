import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idealab/utils/functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff252738),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Text(
                          quote,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, right: 10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '- $author',
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 30, bottom: 12),
                    child: Text('Highlights',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              ),
              Image.asset("assets/images/grad.png"),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 20, bottom: 12),
                    child: Text(
                      'Events',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Image.asset("assets/images/grad.png"),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, top: 20, bottom: 12),
                    child: Text('About Idea Lab',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 160,
                      // ignore this, cos I am giving height to the container
                      width: 160,
                      // ignore this, cos I am giving width to the container
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/tile.png'))),
                      alignment: Alignment.bottomCenter,
                      // This aligns the child of the container
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 30,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Color(0xff6F91F5),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text('Projects',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 160,
                      // ignore this, cos I am giving height to the container
                      width: 160,
                      // ignore this, cos I am giving width to the container
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/tile.png'))),
                      alignment: Alignment.bottomCenter,
                      // This aligns the child of the container
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 30,
                        width: 160,
                        decoration: const BoxDecoration(
                          color: Color(0xff6F91F5),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text('Resources',
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
