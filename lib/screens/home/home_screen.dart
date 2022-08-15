import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: buildAppBar(),
     body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
       backgroundColor: darkBlue,
       elevation: 0,
       titleSpacing: 0.0, 
       leading: IconButton(
         icon: const Icon(Icons.menu),
         iconSize: 30,
         onPressed: () {},
        ),
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget> [
            const Text(
              "Learning",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w400
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              iconSize: 24,
              padding: const EdgeInsets.only(
                right: defaultPadding
              ),
              onPressed: () {},
            ),
         ],
       ), 
      );
  }
}

