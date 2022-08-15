import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/constants.dart';

class SecondBlock extends StatelessWidget {
  const SecondBlock({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              bottom: 20,
              top: 30
            ),
            child: const Text(
              "Categories",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20, 
                color: darkGray,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(   
                      constraints: BoxConstraints.tightFor(
                        height: size.width * 0.43,
                        width: size.width * 0.43
                      ),
                      margin: const EdgeInsets.only(
                        bottom: defaultPadding
                      ),
                      padding: const EdgeInsets.all(defaultPadding * 1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: darkPink
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(
                              bottom: 17
                            ),
                            child: Image.asset("assets/icons/graph_design.png")
                          ),
                          const Expanded(
                            child: Text(
                              "Graphic Design",
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17, 
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),)
                        ],
                      ),
                    ),
                    Container(   
                      constraints: BoxConstraints.tightFor(
                        height: size.width * 0.43,
                        width: size.width * 0.43
                      ),
                      margin: const EdgeInsets.only(
                        bottom: defaultPadding
                      ),
                      padding: const EdgeInsets.all(defaultPadding * 1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: lightBlue_3.withOpacity(0.7)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(
                              bottom: 17
                            ),
                            child: Image.asset("assets/icons/ux_ui_design.png")
                          ),
                          const Expanded(
                            child: Text(
                              "UX/UI Design",
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17, 
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(   
                      constraints: BoxConstraints.tightFor(
                        height: size.width * 0.43,
                        width: size.width * 0.43
                      ),
                      margin: const EdgeInsets.only(
                        bottom: defaultPadding
                      ),
                      padding: const EdgeInsets.all(defaultPadding * 1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: lightRed
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(
                              bottom: 17
                            ),
                            child: Image.asset("assets/icons/programming.png")
                          ),
                          const Expanded(
                            child: Text(
                              "Programming",
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17, 
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                              ),
                            ),)
                        ],
                      ),
                    ),
                    Container(   
                      constraints: BoxConstraints.tightFor(
                        height: size.width * 0.43,
                        width: size.width * 0.43
                      ),
                      margin: const EdgeInsets.only(
                        bottom: defaultPadding
                      ),
                      padding: const EdgeInsets.all(defaultPadding * 1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: darkYellow
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(
                              bottom: 17
                            ),
                            child: Image.asset("assets/icons/testing.png")
                          ),
                          const Expanded(
                            child: Text(
                              "Testing",
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17, 
                                color: lightGray,
                                fontWeight: FontWeight.w500
                              ),
                            ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ]
            ),
          )     
        ],
      ),
    );
  }
}