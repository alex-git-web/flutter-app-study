import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';

class FirstBlock extends StatefulWidget {
  const FirstBlock({super.key});

  @override
  State<FirstBlock> createState() => _FirstBlockState();
}

class _FirstBlockState extends State<FirstBlock> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset("assets/images/user_ava.png", width: 85, height: 85,),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 5
            ),
            child: Text(
              "Joy Jordean", 
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white, 
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
              maxLines: 5,
            )),
          Text(
            "Student", 
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withOpacity(0.3), 
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
          ),
          Container(
            width: size.width * 0.43,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(
              vertical: 20, 
              horizontal: 0
            ),
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(36)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Expanded(
                  child: Center(
                    child: Text(
                      "Add Friend", 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: darkBlue, 
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    )
                  ),
                ),
                Container(
                  decoration:  BoxDecoration(
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add_sharp, size: 20), 
                    iconSize: 10, 
                    color: Colors.white,
                    onPressed: () {},
                  ),
                )
              ]
            )
          )
        ],
      )
    );
  }
}