import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash/congratsSpash.dart';
import 'package:flutter_application_1/splash/requestSplash.dart';

class CompostHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      appBar: AppBar(
        title: Text('Composter', style: TextStyle(fontSize: 20)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RequestSplash()));
                },
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                  size: 20,
                ),
                label: Text(
                  'Send it away',
                  style: TextStyle(color: Colors.blue[900], fontSize: 20),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5,
          ),
          Container(
            height: 40,
            width: 200,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => CongratsSplash()));
                },
                icon: Icon(
                  Icons.recycling_rounded,
                  size: 20,
                  color: Colors.black,
                ),
                label: Text(
                  'Reuse it',
                  style: TextStyle(color: Colors.deepPurple[900], fontSize: 20),
                )),
          )
        ],
      )),
    );
  }
}
