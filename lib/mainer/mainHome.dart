import 'package:flutter/material.dart';
import 'package:flutter_application_1/mainer/prof.dart';
import 'package:flutter_application_1/sign/settings.dart';

class MainHome extends StatefulWidget {
  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    List<String> drawer = ['Edit profile', 'Settings'];
    int selectedIndex = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        backgroundColor: Color.fromARGB(55, 0, 0, 200),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(55, 0, 0, 200),
          centerTitle: true,
          title: Text(
            'Dumpy',
            style: TextStyle(color: Colors.amber),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return drawer
                    .map((e) => PopupMenuItem(
                          child: Text(
                            e,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: e,
                        ))
                    .toList();
              },
              onSelected: (value) {
                if (value == 'Edit profile')
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Prof()));
                if (value == 'Settings')
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Settings()));
              },
            )
          ],
          leading: Image.asset('assets/images/dumpy.png'),
        ),
      ),
    );
  }
}
