// import 'package:flutter_app/meTest/programs.dart';
import 'package:flutter/material.dart';

main() {
  // Programs p1 = Programs("3d Max", "Windows", 1.25);

  // p1.info();
}
// import 'package:flutter_app/meTest/programs.dart';

// main() {
//   Programs p1 = Programs("3d Max", "Windows", 1.25);
//   Programs p2 = Programs("photoshop", "Windows", 12);
//   Educational e1 = Educational(age: 25,);

//   p1.info();
//   p2.info();

//   p1.price = 5000;

//   print(p1.price);
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[50],
            title: Text(
              "TestApp",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myCard('0772 417 3641', 'Mohammad Sharba'),
              myCard('123456789', 'non name number'),
            ],
          )),
    );
  }
}

Widget myCard(String title, String subTitle) {
  return Card(
    margin: EdgeInsets.all(10),
    color: Colors.amber,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.phone,
              size: 35,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 30, color: Colors.black45),
            ),
            subtitle: Text(subTitle),
            trailing: Icon(Icons.headset_rounded),
          )
        ],
      ),
    ),
  );
}
