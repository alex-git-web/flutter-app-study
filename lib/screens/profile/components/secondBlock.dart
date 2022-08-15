import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';

class SecondBlock extends StatelessWidget {
  const SecondBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children:[
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "2", 
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Text(
                "COURSES", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.3), 
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              )
          ]),
         
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "1100", 
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Text(
                "POINTS", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.3), 
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
          ]), 
         
          Column(
            children: [
               Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "14", 
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              Text(
                "RANK", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.3), 
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}