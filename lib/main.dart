import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //you can use stf shorcut to make sttateful widget
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0; //the start number for the widget

  void pressButton() {
    setState(() { //you can use this so the changes will be visible
      number = number + 1; //to make add the number int
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),// its the heading for the application
        ),
        body: Center(
          child: Column(
            //we use column becuase we want to make it vertical
            mainAxisAlignment:
                MainAxisAlignment.center, //to put widget in the center
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()), // here i use textstyle fontsize + number, to make the font following the size of the number but we add 10 more so it doesnt start very small.
              ), //for the number that gonna pop up from the class that we make
              // ignore: deprecated_member_use
              RaisedButton(
                //we call a button here
                child: Text("Add Number"),color: Colors.green, //we make a text on the button
                onPressed:
                    pressButton, //making class for when we pressed the button
              )
            ],
          ),
        ),
      ),
    );
  }
}
