import 'package:flutter/material.dart';

import 'package:flutter_application_1/splash/dustSplash.dart';

class Dust3 extends StatelessWidget {
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
            child: Stack(children: [
              Icon(
                Icons.delete_forever,
                size: 400,
                color: Colors.red,
              ),
              Center(
                child: Text(
                  'Press on the icon to empty the bin',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ]),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => DustSplash()));
            },
          ),
          Text(
            "100%",
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
