// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

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
            child: Image.asset(
              "assets/5Dro.gif",
              //'https://i.gifer.com/74Dv.gif',
              //'https://i.gifer.com/5Dro.gif',
              //"",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned.fill(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: SizedBox()),
          ),
          SafeArea(
              child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              Text(
                "Let's GO",
                style: TextStyle(
                    fontFamily: 'PeckhamPress',
                    color: Colors.white,
                    fontSize: 60),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  "Jul 31, 2021 - The perfect Blob Dream Blob Dream Animated GIF for your conversation. ... A bit about selecting colors from my article in @imaginefxmagazine.",
                  style: TextStyle(
                      fontFamily: 'PeckhamPress',
                      color: Colors.white,
                      fontSize: 16),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
