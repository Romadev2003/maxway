import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    roadToNextPage(context);
    return const Scaffold(
      body: Center(
        child: Text("Spalsh Page"),
      ),
    );
  }

  void roadToNextPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => const HomePage(),
          ),
          (route) => false);
    });
  }
}
