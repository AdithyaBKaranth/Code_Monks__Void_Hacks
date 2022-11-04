import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign/email.dart';

class ResetSplash extends StatefulWidget {
  @override
  State<ResetSplash> createState() => ResetSplashState();
}

class ResetSplashState extends State<ResetSplash> {
  @override
  void initState() {
    _navigateToDob();
    super.initState();
  }

  void _navigateToDob() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Email()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      body: Center(
        child: Text(
          'Resetting your password...',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
