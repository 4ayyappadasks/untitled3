import 'package:flutter/material.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  var name = [
    "amma",
    "abhi",
    "pranav",
    "achu",
    "chechi",
    "joseph",
    "aravi",
    "nithin",
    "anu",
    "sittu",
    "achu",
    "abhi",
    "aravi",
    "fasal"
  ];

  var time = [
    "today,12:45pm",
    "today,10:00am",
    "today,09:00am",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
    "yesterday",
  ];

  var image = [
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
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: ListTile(
                trailing: IconButton(onPressed:() {}, icon:Icon(Icons.settings)),
                leading:
                    CircleAvatar(backgroundImage: AssetImage("assets/images/img.png"),),
                title: Text("my status"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("${name[index]}"),
                      subtitle: Text("${time[index]}"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                      ),
                    ),
                  );
                },
                itemCount: name.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
