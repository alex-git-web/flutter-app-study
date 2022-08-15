import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screenWrapper.dart';
import 'package:learning_app/screens/home/home_screen.dart';
import 'package:learning_app/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawer(
        child: ListView(
          children: const <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'My Drawer',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Gallery'),
            ),
            ListTile(
              title: Text('Slideshow'),
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }

  AppBar buildAppBar(context) {
      return AppBar(
        backgroundColor: darkBlue,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          iconSize: 30,
          onPressed: () => {}
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {},
          ),
        ],
        title: const Center(
          child: Text(
          "Profile",
          style:  TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        )),
      );
    }
}

