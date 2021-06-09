import 'package:flutter/material.dart';
import 'package:plant/responsive/responsiveText.dart';

class TimeWidget extends StatelessWidget {
  TimeWidget({
    Key? key,
  }) : super(key: key);

  String getDay(int index) {
    Map<int, String> days = {
      1: "Monday",
      2: "Tuesday",
      3: "Wednesday",
      4: "Thursday",
      5: "Friday",
      6: "Saturday",
      7: "Sunday"
    };
    return days.containsKey(index)
        ? days[index].toString()
        : "Unable to fetch day";
  }

  String getMonth(int index) {
    Map<int, String> months = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    return months.containsKey(index)
        ? months[index].toString()
        : "Unable to fetch day";
  }

  String getTimeDate() {
    var timeString = DateTime.parse(DateTime.now().toString());
    var weekday = getDay(timeString.weekday.toInt());
    var month = getMonth(timeString.month.toInt());
    var date = timeString.day;
    return "$weekday, $month $date";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment(0.0, 0.0),
      padding: EdgeInsets.only(left: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          getTimeDate(),
          style: TextStyle(
            fontFamily: "Roboto",
            color: Color(0xFFc5ccc8),
            fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 12),
          ),
        ),
      ),
    );
  }
}
