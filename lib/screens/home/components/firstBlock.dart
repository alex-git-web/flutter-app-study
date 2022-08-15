import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/constants.dart';

String loremText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class FirstBlock extends StatelessWidget {
  const FirstBlock({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * 0.3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [lightBlue_3, lightBlue],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.1, 1],
        ),
        borderRadius: BorderRadius.all(Radius.circular(36)),
       
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container( 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Container(
                    padding: EdgeInsets.only(
                     bottom: defaultPadding / 2,
                     top: 0,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "ONLINE",
                        style: TextStyle(
                          fontSize: 28, 
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " EDUCATION", 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 22,
                              fontWeight: FontWeight.w400
                            )),
                        ],
                      ),
                    ),
                  ),
                   Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                     horizontal: defaultPadding,
                    ),
                    child: Text(
                      loremText, 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 11,
                        fontWeight: FontWeight.w300
                      ),
                      maxLines: 5,
                    ),
                  )
                ],
              )
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Image.asset("assets/icons/hat.png")
            )
          )
        ],
      ),
    );
  }
}