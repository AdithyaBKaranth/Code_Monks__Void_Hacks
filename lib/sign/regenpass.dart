import 'package:flutter/material.dart';

import 'package:flutter_application_1/sign/forgotpass.dart';

class Regenpass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/dumpy.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height / 3,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'New Password',
                labelText: 'New Password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 35,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height / 3,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Forgotpass()));
              },
              child: Text(
                'Forgot password?',
                style: TextStyle(fontSize: 15),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange)),
                    onPressed: () {
                      //  Navigator.of(context).pushReplacement(
                      //  MaterialPageRoute(builder: (context) => ()));
                    },
                    child: Text("Next ->")),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
