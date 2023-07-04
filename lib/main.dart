import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled3/tabbars.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: p1(),
  ));
}

class p1 extends StatefulWidget {
  const p1({Key? key}) : super(key: key);

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => p2(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Image.asset("assets/images/whatsapp_logo.original.jpg") ,
        ),
      ),
    );
  }
}
