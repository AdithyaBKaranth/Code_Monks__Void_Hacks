import 'package:flutter/material.dart';

import 'package:flutter_application_1/splash/updateSplash.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Prof extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cancel_outlined,
                color: Colors.red,
                size: 37,
              )),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UpdateSplash()));
              },
              icon: Icon(
                Icons.check,
                color: Colors.blueAccent[700],
                size: 37,
              ))
        ],
        title: Text('Edit profile'),
      ),
      backgroundColor: Color.fromARGB(55, 0, 0, 200),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person,
                      size: 90,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: MediaQuery.of(context).size.height / 6,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Profile photo',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.deepOrange),
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.delete,
                                            ))
                                      ],
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.camera_alt,
                                                  color: Colors.greenAccent,
                                                ),
                                              ),
                                              Text(
                                                'Camera',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.photo,
                                                    color: Colors.greenAccent,
                                                  )),
                                              Text(
                                                'Gallery',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Name',
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
                hintText: 'Name',
                labelText: 'Name',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Phone',
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
            child: IntlPhoneField(
              countries: ['IN'],
              initialCountryCode: 'IN',
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pink))),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Ward No',
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
              maxLength: 5,
              decoration: InputDecoration(
                hintText: 'Ward No',
                labelText: 'Ward No',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Address',
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
              maxLength: 250,
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: 'Address',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Email',
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
                labelText: 'Email',
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
        ]),
      ),
    );
  }
}
