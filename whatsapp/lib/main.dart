import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls.dart';
import 'package:whatsapp/tabs/camera.dart';
import 'package:whatsapp/tabs/chats.dart';
import 'package:whatsapp/tabs/status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff007474),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white,
            )
          ],
          bottom: TabBar(
              indicatorColor: Colors.white,
              controller: _tabController,
              tabs: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                Text(
                  "CHATS",
                  style: TextStyle(color: Colors.white),
                ),
                Text("STATUS", style: TextStyle(color: Colors.white)),
                Text("CALL", style: TextStyle(color: Colors.white))
              ]),
        ),
        body: TabBarView(
            controller: _tabController,
            children: [new Camera(), new Chats(), new Status(), new Calls()]),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
                backgroundColor: Color(0xff007474),
                onPressed: () {},
                child: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              )
            : _tabController.index == 1
                ? FloatingActionButton(
                    backgroundColor: Color(0xff007474),
                    onPressed: () {},
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                  )
                : _tabController.index == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45.0,
                            width: 45.0,
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xff007474),
                            onPressed: () {},
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    : FloatingActionButton(
                        backgroundColor: Color(0xff007474),
                        onPressed: () {},
                        child: Icon(
                          Icons.add_call,
                          color: Colors.white,
                        ),
                      ));
  }
}
