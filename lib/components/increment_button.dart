import 'package:flutter/material.dart';
import 'package:pontosvolei/models/time.dart';
import 'package:pontosvolei/homepage.dart';

class IncrementButton1 extends StatefulWidget {
  @override
  _IncrementButtonState createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton1> {
  double larguraBotao = 150;

  Time time1 = Time("time1", 0);
  Time time2 = Time("time2", 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          time1.incrementaPonto();
        });
      },
      child: Container(
        height: 150,
        width: larguraBotao,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${time1.ponto}',
              style: TextStyle(
                fontSize: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IncrementButton2 extends StatefulWidget {
  @override
  _IncrementButton2State createState() => _IncrementButton2State();
}

class _IncrementButton2State extends State<IncrementButton2> {
  double larguraBotao = 150;
  get time2 => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          time2.incrementaPonto();
        });
      },
      child: Container(
        height: 150,
        width: larguraBotao,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${time2.ponto}',
              style: TextStyle(
                fontSize: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
