import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:tomat/TomatWidget.dart';

void main() {
  runApp(tomat());
}

class tomat extends StatefulWidget {
  @override
  _tomatState createState() => _tomatState();


}

class _tomatState extends State <tomat> {

  String _title = 'Tomat - A simple pomodoro timer.';

  @override
  Widget build(BuildContext context) {
   // final TextStyle display1 = Theme.of(context).textTheme.display1;
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Builder(builder: (context) => Container(

          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          child: FittedBox(

            child: tomatWidget(

              duration: Duration(minutes: 25),
              tick: Duration(milliseconds: 250),
              onTick: (String countdown) => this.setState(() {
                _title = countdown;

              }),

            ),

          ),

        )),



      ),



    );
  }

}