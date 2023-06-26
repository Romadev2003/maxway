import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_dropdawn_widget.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1.5,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 11),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SafeArea(
              child: Container(
                height: 60,
                padding: const EdgeInsets.only(
                  left: 28,
                  right: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(CupertinoIcons.xmark),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 47.8,
                    child: MyDropdown(),
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Kirish",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xff51309A),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bosh sahifa",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_left_rounded,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Filliallar",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Biz haqimizda",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bog`lanish",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
