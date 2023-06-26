import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxway/widget/custom_drower.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(1),
            child: Image.network(
                "https://maxway.uz/_next/image?url=https%3A%2F%2Fcdn.delever.uz%2Fdelever%2F63909f85-e7e7-42b8-9312-c92f13991a37&w=64&q=75")),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Image.network(
                      "https://i.pinimg.com/originals/bd/14/9c/bd149c5c05185de274f040d809f93354.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                padding: const EdgeInsets.all(1),
                child: const Text(
                  "0 so`m",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              )
            ],
          )
        ],
      ),
      drawer: const MyDrawer() ,
      body: const Column(
        children: [],
      ),
    );
  }
}
