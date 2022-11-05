import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
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
            height: MediaQuery.of(context).size.height / 15,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.key,
              color: Colors.black,
            ),
            title: Text(
              'Account',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            subtitle: Text(
              'Privacy, security, change number',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.orange,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.message,
              color: Colors.black,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            subtitle: Text(
              'Messages',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.orange,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.language,
              color: Colors.black,
            ),
            title: Text(
              'App language',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            subtitle: Text(
              'English',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.orange,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.sell,
              color: Colors.black,
            ),
            title: Text(
              'Storage and data',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            subtitle: Text(
              'waste usage(composting)',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.orange,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            leading: Icon(
              Icons.workspace_premium,
              color: Colors.black,
            ),
            title: Text(
              'Help',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            subtitle: Text(
              'Help centre, contact us, privacy, policy',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            tileColor: Colors.orange,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Text(
            'from',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/dumpy.png',
                    scale: 20,
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Dumpy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
