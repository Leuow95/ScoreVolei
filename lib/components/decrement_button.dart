import 'package:flutter/material.dart';

class DecrementButton1 extends StatefulWidget {
  @override
  _DecrementButton1State createState() => _DecrementButton1State();
}

class _DecrementButton1State extends State<DecrementButton1> {
  get time1 => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          time1.decrementaPonto();
        });
      },
      child: Container(
        child: Center(
          child: Text(
            "-1",
            style: TextStyle(
              fontSize: 38,
            ),
          ),
        ),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      ),
    );
  }
}

class DecrementButton2 extends StatefulWidget {
  @override
  _DecrementButton2State createState() => _DecrementButton2State();
}

class _DecrementButton2State extends State<DecrementButton2> {
  get time2 => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          time2.decrementaPonto();
        });
      },
      child: Container(
          child: Center(
            child: Text(
              "-1",
              style: TextStyle(
                fontSize: 38,
              ),
            ),
          ),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          )),
    );
  }
}
