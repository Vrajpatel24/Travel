// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/next_page.dart';
import 'package:travel_app/text_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/i1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              TextFieldBox(),
              SizedBox(
                height: 250.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TRIP",
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    "LO",
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "V",
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.lightBlue[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "ER",
                    style: TextStyle(
                      fontSize: 55,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 170.0),
              Container(
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    dataBox("New zealand"),
                    dataBox('U.S.A.'),
                    dataBox('Africa'),
                    dataBox('Switzerland'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dataBox(cityname) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 200.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 16.0, top: 8.0),
                child: Text(
                  cityname,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: InkWell(
                  child: Icon(Icons.east, color: Colors.white, size: 35.0),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              SizedBox(width: 15.0),
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
                size: 25.0,
              ),
              SizedBox(width: 8.0),
              Text(
                "20",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(width: 8.0),
              Text(
                "Destinations",
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.hiking_outlined,
                  color: Colors.lightBlue,
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.hiking_outlined,
                  color: Colors.lightBlue,
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.hiking_outlined,
                  color: Colors.lightBlue,
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.hiking_outlined,
                  color: Colors.lightBlue,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
