import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/call.dart';
import 'package:untitled3/cam.dart';
import 'package:untitled3/chat.dart';
import 'package:untitled3/status.dart';

class p2 extends StatefulWidget {
  const p2({Key? key}) : super(key: key);

  @override
  State<p2> createState() => _p2State();
}

class _p2State extends State<p2> {
  int index1 = 0;

  var screens = [chat(), status(), call()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => cam(),));
          }, icon: Icon(Icons.camera_alt)),
          actions: [PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("setting")),
              PopupMenuItem(child: Text("new group")),
              PopupMenuItem(child: Text("starred message")),
              PopupMenuItem(child: Text("refresh")),
              PopupMenuItem(child: Text("search"))
            ];
          },)
          ],
          backgroundColor: Colors.green[400],
          bottom: PreferredSize(
              child: Container(),
              preferredSize: Size.fromHeight(40))),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "statuse"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
          //TabItem(icon: Icon(Icons.message),title: "community")
        ],currentIndex: index1,
        onTap: (tapindex) {
          setState(() {
            index1 = tapindex;
          });
        },
      ),


      body: Center(
        child: screens[index1],
      ),
    );
  }
}
