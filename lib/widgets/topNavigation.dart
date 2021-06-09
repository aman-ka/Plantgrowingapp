import 'package:flutter/material.dart';
import 'package:plant/widgets/customizedButton.dart';
import 'package:plant/widgets/displayText.dart';
import 'package:plant/widgets/timeWidget.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width * 0.20);
    return Container(
      //color: Colors.red,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              //color: Colors.yellowAccent,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: TimeWidget(),
                  ),
                  Expanded(
                    flex: 4,
                    child: DisplayText(title: "Top Picks"),
                  )
                ],
              ),
            ),
          ),
          CustomizedButton()
        ],
      ),
    );
  }
}
