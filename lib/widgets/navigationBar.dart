import 'package:flutter/material.dart';
import 'package:plant/responsive/responsiveText.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  var controll = 1;

  Widget getSelected(String name) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          //color: Colors.white,
        ),
        Center(
          child: Text(
            name,
            style: TextStyle(
              color: Color(0xFF0c3b2e),
              fontWeight: FontWeight.bold,
              fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 17),
            ),
          ),
        ),
      ],
    );
  }

  Widget getNonSelected(String name) {
    return GestureDetector(
      //key: Key("$index"),
      onTap: () => {},
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: Color(0xFF0c3b2e),
            fontWeight: FontWeight.bold,
            fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 17),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2 * 0.16,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFebeeea),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: controll == 1
                      ? getSelected("Top")
                      : getNonSelected("Top"),
                ),
                Expanded(
                  child: controll == 2
                      ? getSelected("Outdoor")
                      : getNonSelected("Outdoor"),
                ),
                Expanded(
                  child: controll == 3
                      ? getSelected("Indoor")
                      : getNonSelected("Indoor"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
