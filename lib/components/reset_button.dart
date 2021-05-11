import 'package:flutter/material.dart';

class ResetButton extends StatefulWidget {
  @override
  _ResetButtonState createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  get time1 => null;
  get time2 => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          time1.zeraPonto();
          time2.zeraPonto();
        });
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Text(
          "RESET",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
