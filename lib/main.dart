import 'package:flutter/material.dart';
import 'package:whatsapp/chatpage.dart';
import 'package:whatsapp/profilepage.dart';

import 'homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myhome(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
      fontFamily: "Helvetica Neue Medium Extended",
    ),
  ));
}
