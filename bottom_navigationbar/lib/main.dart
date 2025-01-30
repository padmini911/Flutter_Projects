import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(
      child: Text(
        "Home Page",
        style: TextStyle(color: Colors.blue, fontSize: 20.0),
      ),
    ),
    Center(
      child: Text(
        "Search Page",
        style: TextStyle(color: Colors.blue, fontSize: 20.0),
      ),
    ),
    Center(
      child: Text(
        "Profile Page",
        style: TextStyle(color: Colors.blue, fontSize: 20.0),
      ),
    ),
    Center(
      child: Text(
        "Camera Page",
        style: TextStyle(color: Colors.blue, fontSize: 20.0),
      ),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Bottom NavigationBar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.blue,
      ),
      body: tabs[index],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        currentIndex: index,
        iconSize: 30,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.deepOrangeAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "Camera",
              backgroundColor: Colors.green),
        ],
        onTap: (current_index) {
          setState(() {
            index = current_index;
          });
        },
      ),
    );
  }
}
