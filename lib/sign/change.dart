import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign/emailcgotp.dart';
import 'package:flutter_application_1/sign/phcgotp.dart';

class Change extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: ((context) => Phcgotp())));
            },
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              leading: Icon(
                Icons.key,
                color: Colors.black,
              ),
              title: Text(
                'Change Email id',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              tileColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => Emailcgotp())));
            },
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              leading: Icon(
                Icons.message,
                color: Colors.black,
              ),
              title: Text(
                'Change Phone Number',
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              tileColor: Colors.orange,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
        ],
      ),
    );
  }
}
