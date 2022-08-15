import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screens/profile/components/firstBlock.dart';
import 'package:learning_app/screens/profile/components/secondBlock.dart';
import 'package:learning_app/screens/profile/components/threeBlock.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding
      ),
      color: darkBlue,
      child: Column(
        children: [
          FirstBlock(),
          SecondBlock(),
          ThreeBlock()
        ],
      ),
    );
  }
}

