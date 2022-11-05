import 'package:flutter/material.dart';
import 'package:flutter_application_1/dust/dust.dart';
import 'package:flutter_application_1/mainer/mainHome.dart';

class Dust4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(55, 0, 0, 200),
        centerTitle: true,
        title: Text("Dustin Status", style: TextStyle(color: Colors.amber)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Icon(
              Icons.delete_forever,
              size: 400,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Dust()));
            },
          ),
          Text(
            "0%",
            style: TextStyle(
              //backgroundColor: Colors.deepOrange,
              fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
