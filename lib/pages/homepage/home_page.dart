// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            //child: SvgPicture.asset('assets/blob.svg'),
            child: Image.network(
              //'https://i.gifer.com/74Dv.gif',
              'https://i.gifer.com/5Dro.gif',
              //"",
              fit: BoxFit.cover,
            ),
          ),
          // Positioned.fill(
          //   child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //       child: SizedBox()),
          // ),
          SafeArea(
              child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                "Let's GO",
                style: TextStyle(
                    fontSize: 190,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Jul 31, 2021 - The perfect Blob Dream Blob Dream Animated GIF for your conversation. ... A bit about selecting colors from my article in @imaginefxmagazine.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ))
        ],
      ),
    );
  }
}
