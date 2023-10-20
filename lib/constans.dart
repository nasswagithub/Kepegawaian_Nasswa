import 'package:flutter/material.dart';

var myDefaultBackground = Colors.white;

var myAppBar = AppBar(
  //backgroundColor: const Color.fromARGB(255, 15, 75, 124),
  backgroundColor: Colors.blueGrey,
);

var myDrawer = Drawer(
  backgroundColor: Colors.blueGrey,
  child: Column(children: const [
    DrawerHeader(
        child: Icon(
      Icons.favorite,
      color: Colors.white,
    )),
    ListTile(
      leading: Icon(
        Icons.home,
        color: Colors.white,
      ),
      title: Text(
        'D A S H B O A R D',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.account_circle_sharp,
        color: Colors.white,
      ),
      title: Text(
        'D A T A  P E G A W A I',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.app_registration_sharp,
        color: Colors.white,
      ),
      title: Text(
        'D A T A  A B S E N S I',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.logout,
        color: Colors.white,
      ),
      title: Text(
        'L O G O U T',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ]),
);
