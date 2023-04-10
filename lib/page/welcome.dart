import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_app_ui/page/home.dart';
import 'package:lottie/lottie.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Lottie.network(
            "https://assets9.lottiefiles.com/packages/lf20_l13zwx3i.json"),
      ),
    );
  }
}
