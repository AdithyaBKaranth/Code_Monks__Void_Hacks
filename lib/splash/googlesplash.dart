import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainer/mainHome.dart';

class googleSplash extends StatefulWidget {
  @override
  State<googleSplash> createState() => _googleSplashState();
}

class _googleSplashState extends State<googleSplash> {
  @override
  void initState() {
    _navigateToDob();
    super.initState();
  }

  void _navigateToDob() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MainHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      body: Center(
        child: Text(
          'Verifying your email...',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
