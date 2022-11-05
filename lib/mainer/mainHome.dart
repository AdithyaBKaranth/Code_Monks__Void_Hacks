import 'package:flutter/material.dart';
import 'package:flutter_application_1/compost/composthome.dart';
import 'package:flutter_application_1/dumped/date.dart';
import 'package:flutter_application_1/dust/dust4.dart';
import 'package:flutter_application_1/mainer/prof.dart';
import 'package:flutter_application_1/rewards/reward.dart';
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Prof()));
                    if (value == 'Settings')
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Settings()));
                  },
                )
              ],
              leading: Image.asset('assets/images/dumpy.png'),
            ),
            body: GridView(
                padding: EdgeInsets.symmetric(vertical: 80),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 100,
                    childAspectRatio: 2 / 3,
                    mainAxisSpacing: 40),
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Dust4()));
                    },
                    child: Card(
                      elevation: 4,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.delete_forever,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Dustbin',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Date()));
                    },
                    child: Card(
                      elevation: 4,
                      color: Colors.brown[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Row(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.alarm,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Dumped',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              )
                            ],
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CompostHome()));
                    },
                    child: Card(
                      elevation: 4,
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.recycling_rounded,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Compost',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )
                        ],
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Reward()));
                    },
                    child: Card(
                      elevation: 4,
                      color: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.star,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Rewards',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )
                        ],
                      )),
                    ),
                  ),
                ])));
  }
}
