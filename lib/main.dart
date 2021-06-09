import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant/models/plant.dart';
import 'package:plant/responsive/responsiveText.dart';
import 'package:plant/widgets/navigationBar.dart';
import 'package:plant/widgets/secondscreen.dart';
import 'package:plant/widgets/topNavigation.dart';

import 'data/plantdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "BlackMongo",
        primaryColorLight: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8faf7),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: TopNavigation(),
            ),
            NavigationBar(),
            Divider(),
            Menu()
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      //color: Colors.black,
      height: MediaQuery.of(context).size.height * 0.74,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: menulist.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondRoute(index),
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(25),
              height: MediaQuery.of(context).size.height * 0.56,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF0c3b2e),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Center(
                      child: Image.asset(
                        menulist[index].url,
                        width: 180,
                        height: 250,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, top: 10),
                      child: Text(
                        menulist[index].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 35.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 65.0, left: 28),
                      child: Text(
                        menulist[index].place,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 20),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.only(right: 80),
                      height: MediaQuery.of(context).size.height / 2 * 0.25,
                      width: MediaQuery.of(context).size.width / 2 * 0.40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color(0xFF6c9772),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(26),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: height / 2 * 0.25,
                      width: width / 2 * 0.40,
                      //color: Colors.red,
                      child: Center(
                        child: Text(
                          "\$ ${menulist[index].price} \nFrom",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AdaptiveTextSize()
                                .getadaptiveTextSize(context, 15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
