import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screens/profile/components/listItem.dart';

class ThreeBlock extends StatelessWidget {
  const ThreeBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: const <Widget>[
          ListItem(
            iconType: Icons.people,
            caption: "Users"
          ),
          ListItem(
            iconType: Icons.cast_for_education_rounded,
            caption: "Broadcast"
          ),
          ListItem(
            iconType: Icons.access_alarm_outlined,
            caption: "Clock"
          ),
        ],
      )
    );
  }
}
