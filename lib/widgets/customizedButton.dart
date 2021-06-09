import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            //shadowColor: Colors.green,
            onPrimary: Color(0xFFbbcbc2),
            elevation: 20,
            //padding: EdgeInsets.all(20),
            //minimumSize: Size(10, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () => {},
          child: Icon(
            Icons.menu,
            color: Color(0xFF0c3b2e),
            size: 20,
          ),
        ),
      ),
    );
  }
}
