import 'package:flutter/material.dart';
import 'package:plant/data/plantdata.dart';
import 'package:plant/responsive/responsiveText.dart';

class SecondRoute extends StatelessWidget {
  final int index;
  const SecondRoute(@required this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(menulist[this.index].fertdays);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF0c3b2e),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.56,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.02,
                  ),
                  child: Text(
                    menulist[index].place,
                    style: TextStyle(
                      color: Color(0xFF6f9287),
                      fontFamily: "Roboto",
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 21),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.05,
                  ),
                  child: Text(
                    menulist[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 35),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 98,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Row(
                      children: [
                        Icon(Icons.add_a_photo_outlined),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Add Photo",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto",
                                fontSize: AdaptiveTextSize()
                                    .getadaptiveTextSize(context, 13.4)),
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF244f43),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      fixedSize: Size(145, 40),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        //color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF244f43),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              //padding: EdgeInsets.all(20),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xFF6c9673),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.water,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Water",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 16)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'in ${menulist[index].waterdays} days',
                                style: TextStyle(
                                    color: Color(0xFF50766b),
                                    fontFamily: 'Roboto',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        //color: Colors.red,
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xFF244f43),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              //padding: EdgeInsets.all(20),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xFF6c9673),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.landscape,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Fertilizing",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 16)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'in ${menulist[index].fertdays} days',
                                style: TextStyle(
                                    color: Color(0xFF50766b),
                                    fontFamily: 'Roboto',
                                    fontSize: AdaptiveTextSize()
                                        .getadaptiveTextSize(context, 14)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 140, right: 0),
                  child: Image.asset(
                    menulist[this.index].url,
                    width: 190,
                    height: 190,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 330, left: 20),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "About",
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFf0cd6a),
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Tips",
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF244f43),
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Activity",
                        style: TextStyle(
                          fontFamily: "roboto",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF244f43),
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 364,
                    left: 18,
                  ),
                  child: Text(
                    "Care",
                    style: TextStyle(
                      color: Color(0xFF193b2d),
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 25),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 420,
                    left: 18,
                    right: 18,
                  ),
                  child: Divider(
                    thickness: 01,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 445,
                    left: 20,
                  ),
                  child: Text(
                    menulist[this.index].title2,
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      color: Color(0xFF193b2d),
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 20),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 485,
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    menulist[this.index].description,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Color(0xFF678177),
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 18),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    bottom: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      "Change Schedule",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          fontSize: AdaptiveTextSize()
                              .getadaptiveTextSize(context, 15)),
                    ),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.orange,
                      primary: Color(0xFFf7b929),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 0.90, 60),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
