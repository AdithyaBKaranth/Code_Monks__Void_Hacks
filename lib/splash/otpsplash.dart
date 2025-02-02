import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainer/mainHome.dart';

class OtpSplash extends StatefulWidget {
  @override
  State<OtpSplash> createState() => _OtpSplashState();
}

class _OtpSplashState extends State<OtpSplash> {
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
          'Verifying your phone number...',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
