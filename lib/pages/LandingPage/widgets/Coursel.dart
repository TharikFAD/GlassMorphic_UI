// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
  final child;
  const MyCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //this is the parent widget for the first card------------->
      margin: EdgeInsets.only(left: 18.0, right: 18.0),
      height: size.height * 0.3,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: child,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.198,
                ),
                Container(
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                              "Call Of Duty, Get the life like survival experience on your hand",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, fontWeight: FontWeight.w700)
                              // TextStyle(
                              //     overflow: TextOverflow.fade),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: size.height * 0.26,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
      ),
    );
  }
}
