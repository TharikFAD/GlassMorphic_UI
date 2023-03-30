// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_ui_design_test/pages/LandingPage/widgets/Coursel.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //List for the Tab Bar

  List<String> items = [
    "Action",
    "Adventure",
    "Arcade",
    "Casual",
    "Puzzle",
    "Indie",
    "Music",
    "RPG",
    "Simulation",
    "Sports",
    "Trivia",
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.blue.withOpacity(0.1),
      //Body
      body: Stack(
        children: [
          //Background Image
          SizedBox(
              height: size.height,
              width: size.width,
              child: SvgPicture.asset(
                'assets/g5142.svg',
                fit: BoxFit.cover,
              )),

          //Blur
          Positioned.fill(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90),
                child: SizedBox()),
          ),

          //Forground Content
          SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  //AppBar
                  SizedBox(
                    height: size.height * 0.08,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/menu.png'),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/notification.png'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Title
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Text(
                        'Browse games',
                        style: GoogleFonts.poppins(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),

                  //Spacing
                  SizedBox(
                    height: size.height * 0.05,
                  ),

                  //Tab Bar
                  Container(
                    width: size.width,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: size.width,
                          child: ListView.builder(
                            itemCount: items.length,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 100),
                                  margin: EdgeInsets.all(8),
                                  width: 80,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    border: current == index
                                        ? Border.all(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            width: 1)
                                        : null,
                                    gradient: current == index
                                        ? LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 199, 148, 236),
                                              Color(0xFF4E65FF),
                                            ],
                                          )
                                        : LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromARGB(
                                                  255, 202, 191, 246),
                                              Color.fromARGB(
                                                  255, 150, 149, 251),
                                            ],
                                          ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    items[index],
                                    style: GoogleFonts.poppins(
                                        color: current == index
                                            ? Colors.black
                                            : Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Main Body
                  MyCard(child: Image.asset('assets/Apxe.jpg')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
