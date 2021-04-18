import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('Ask me anything')),
            backgroundColor: Colors.red,
          ),
          body: BallPage(),
        )
      ),
    );
}
class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
   int numBall=1;

  @override
  Widget build(BuildContext context) {
 return Center(
 child: Row(
 children: <Widget>[
 Expanded(

  child: TextButton(
   onPressed:(){
   setState(() {
 numBall=Random().nextInt(4) +1;
 });
},
child: Image.asset('images/ball$numBall.png'),
),
),
 ],
 ),
 );
  }
}