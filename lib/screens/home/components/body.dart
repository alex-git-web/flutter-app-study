import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screens/home/components/firstBlock.dart';
import 'package:learning_app/screens/home/components/secondBlock.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
              height: size.height * 0.17,
              decoration: const BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )
              ),
            ),
            Positioned(
              top: defaultPadding,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding,
                  vertical: 0
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: const <Widget>[
                      FirstBlock(),
                      SecondBlock()
                    ],
                )
              ),
              ) 
              
            ),
          ]
        )
    );
  }
}

