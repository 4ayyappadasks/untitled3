import 'package:flutter/material.dart';

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
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
  var calltypeicon = [
    Icons.phone_missed,
    Icons.call,
    Icons.call,
    Icons.phone_missed,
    Icons.call,
    Icons.call,
    Icons.phone_missed,
    Icons.call,
    Icons.call,
    Icons.phone_missed,
    Icons.call,
    Icons.call,
    Icons.phone_missed,
    Icons.call,

  ];
  var calltype = [
    "missed",
    "outgoing",
    "incoming",
    "missed",
    "missed",
    "outgoing",
    "incoming",
    "missed",
    "missed",
    "outgoing",
    "incoming",
    "missed",
    "missed",
    "outgoing",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: calltype.length,
        itemBuilder: (context, index) {
        return Card(child: ListTile(
          title: Text("${name[index]}"),
          trailing: Text("${time[index]}"),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),),
          subtitle: Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(calltypeicon[index]),
              Text("${calltype[index]}"),
            ],
          ),
        ));
      },),
    );
  }
}
