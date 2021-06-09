import 'package:flutter/material.dart';
import 'package:plant/responsive/responsiveText.dart';

class DisplayText extends StatefulWidget {
  const DisplayText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _DisplayTextState createState() => _DisplayTextState();
}

class _DisplayTextState extends State<DisplayText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xFF183a2d),
            fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 28),
          ),
        ),
      ),
    );
  }
}
