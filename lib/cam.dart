import 'package:flutter/material.dart';

class cam extends StatefulWidget {
  const cam({Key? key}) : super(key: key);

  @override
  State<cam> createState() => _camState();
}

class _camState extends State<cam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Container(width:MediaQuery.of(context).size.width,
        child: Image.asset(fit: BoxFit.fitWidth,
            "assets/images/WhatsApp-Camera-Modes-458x1024.jpg"),
      ),
    ),);
  }
}
