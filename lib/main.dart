import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign/signin.dart';

void main() => runApp(Waste());

class Waste extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Dumpy!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/dumpy.png')),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Text(
              'Let us contribute together towards the sanity of our country',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Sign()));
                },
                child: Text('Contribute ->'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
