import 'package:flutter/material.dart';
import 'package:pontosvolei/models/time.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Time time1 = Time("time1", 0);
  Time time2 = Time("time2", 0);

  double larguraBotao = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TIME 1
                GestureDetector(
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
                ),
                //TIME 2
                GestureDetector(
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
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
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
              ),
              GestureDetector(
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
                      color: Colors.red,
                    )),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
