import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.iconType,
    required this.caption,
  }) : super(key: key);

  final IconData iconType;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          bottom: 15
        ),
       decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15),
            decoration:  BoxDecoration(
              color: darkBlue.withOpacity(0.3),
              borderRadius: BorderRadius.circular(100)
            ),
            child: IconButton(
              icon: Icon(iconType, size: 25), 
              iconSize: 10, 
              color: darkBlue,
              onPressed: () {},
            ),
          ),
          Text(
            caption, 
            textAlign: TextAlign.start,
            style: TextStyle(
              color: darkBlue, 
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp), 
            iconSize: 17, 
            color: darkBlue,
            onPressed: () {},
          ),
        ],
      )
    );
  }
}