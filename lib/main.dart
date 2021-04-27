import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _time1 = 0;
  int _time2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Row(
              children: [
                //TIME 1
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _time1++;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '$_time1',
                            style: TextStyle(
                              fontSize: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //TIME 2
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _time2++;
                    });
                  },
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$_time2',
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
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                color: Colors.purple,
              ))
            ],
          ),
        ],
      ),
    );
  }
}
