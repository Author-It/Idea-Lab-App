import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
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
              ExpandableCarousel(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            "assets/carousel/events/1.jpeg",
                            fit: BoxFit.fill,
                            height: 270,
                          ));
                    },
                  );
                }).toList(),
              ),
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
              ExpandableCarousel(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            "assets/carousel/events/1.jpeg",
                            fit: BoxFit.fill,
                            height: 270,
                          ));
                    },
                  );
                }).toList(),
              ),
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
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xff252738),
                        borderRadius: BorderRadius.circular(10),
                        // image: const DecorationImage(
                        //   image: AssetImage('assets/images/project.png'),
                        //   alignment: Alignment.center,
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      alignment: Alignment.bottomCenter,
                      // This aligns the child of the container
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                            child: Image(
                              image: AssetImage('assets/images/project.png'),
                              fit: BoxFit.cover,
                              height: 110,
                              width: 110,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 30,
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xff6F91F5),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Projects',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xff252738),
                        borderRadius: BorderRadius.circular(10),
                        // image: const DecorationImage(
                        //   image: AssetImage('assets/images/project.png'),
                        //   alignment: Alignment.center,
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      alignment: Alignment.bottomCenter,
                      // This aligns the child of the container
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Center(
                            child: Image(
                              image: AssetImage('assets/images/project.png'),
                              fit: BoxFit.cover,
                              height: 110,
                              width: 110,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomCenter,
                            height: 30,
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Color(0xff6F91F5),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Resources',
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
