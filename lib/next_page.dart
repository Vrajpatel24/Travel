import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  final controller = PageController(initialPage: 0);
  final currentpage = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.grey, size: 30.0),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, right: 10.0),
            child: Text(
              '${currentpage.value}/23',
              style: TextStyle(color: Colors.grey, fontSize: 25.0),
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        backdropEnabled: true,
        minHeight: 180,
        maxHeight: 700,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
        body: PageView(
          onPageChanged: (index) {
            setState(() {
              currentpage.value = index + 1;
            });
          },
          controller: controller,
          children: [
            PageFile('assets/images/i1.jpg','Hiking'),
            PageFile('assets/images/i2.jpg','Dihgicd'),
            PageFile('assets/images/i1.jpg','Akvedg'),
            PageFile('assets/images/i2.jpg','Brgrv'),
            PageFile('assets/images/i1.jpg','Dfegvb'),
            PageFile('assets/images/i2.jpg','Hgdssfg'),
          ],
        ),
        collapsed: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 5,
              width: 40,
              color: Colors.transparent,
              child: FloatingActionButton(
                heroTag: 'b2',
                onPressed: () {},
                elevation: 0,
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Weather",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.cloud_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Cloudy",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "10",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "°C",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Temp",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "8",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "km",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Wind",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "12",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "km",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Distance",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        panel: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 5,
              width: 40,
              color: Colors.transparent,
              child: FloatingActionButton(
                heroTag: 'b1',
                onPressed: () {},
                elevation: 0,
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    "Weather",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.cloud_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Cloudy",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "10",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "°C",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Temp",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "8",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "km",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Wind",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            "12",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "km",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(),
                      child: Text(
                        "Distance",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 190),
              child: Text(
                "Activities",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.hiking,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Swimming",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.hiking,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Surfing",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.hiking,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Hiking",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 40),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.hiking,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Cycling",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 55),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Icon(
                        Icons.hiking,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        "Camping",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(right: 210),
              child: Text(
                "Gallery",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 120,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/i1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/i2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/i2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  height: 120,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/i1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget PageFile(img,name) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 200.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.only(top: 30.0, left: 280.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(
              Icons.videocam_outlined,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          SizedBox(height: 60),
          Container(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'the Icelandic',
              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
              'Iceland',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(left: 32.0, right: 30.0),
            child: Text(
              "Rjvdehf ijlizhfjn jljvndjnsc ihsdkubvdf lijilhzsf jlijlisjvb ijihedf jnchjwdkj noizncjkf nuihsakcj kuhkubsfc evbeskv   jsfbfj noISDv nkjksdvkusDv jn sdv n xcv  jnSJvnkjn ihx  ",
              style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
