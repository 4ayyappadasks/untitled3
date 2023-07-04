import 'package:flutter/material.dart';
import 'package:untitled3/cam.dart';

class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  var name = [
    "anu",
    "ammu",
    "achu",
    "sonu",
    "ramu",
    "damu",
    "anu",
    "ammu",
    "achu",
    "sonu",
    "ramu",
    "damu",
    "anu",
    "ammu",
    "achu",
    "sonu",
    "ramu",
    "damu",
    "anu",
    "ammu",
    "achu",
  ];
  var images = [

    "assets/images/tomandjerry1.jpg",
    "assets/images/tomandjerry2.jpg",
    "assets/images/tomandjerry3.jpg",
    "assets/images/tomandjerry4.png",
    "assets/images/tomandjerry5.jpg",
    "assets/images/tomandjerry6.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/tomandjerry1.jpg",
    "assets/images/tomandjerry2.jpg",
    "assets/images/tomandjerry3.jpg",
    "assets/images/tomandjerry4.png",
    "assets/images/tomandjerry5.jpg",
    "assets/images/tomandjerry6.jpg",
    "assets/images/the-dk-photography-KSgK6Only9I-unsplash.jpg",
    "assets/images/tomandjerry1.jpg",
    "assets/images/tomandjerry2.jpg",
    "assets/images/tomandjerry3.jpg",
    "assets/images/tomandjerry4.png",
    "assets/images/tomandjerry5.jpg",
    "assets/images/tomandjerry6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (Context, index) {
            return Card(
              child: ListTile(
                title: Text("${name[index]}"),
                subtitle: Text("hi da"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                trailing: Text("12/10/2023"),
              ),
            );
          },
          itemCount: name.length,
        )
    );
  }
}
