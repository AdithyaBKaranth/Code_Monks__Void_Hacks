import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainer/mainHome.dart';

class UpdateSplash extends StatefulWidget {
  @override
  State<UpdateSplash> createState() => UpdateSplashState();
}

class UpdateSplashState extends State<UpdateSplash> {
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
          'Updating your profile...',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
