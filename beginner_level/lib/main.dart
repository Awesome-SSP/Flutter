import 'package:beginner_level/FirstClass.dart';
import 'package:beginner_level/SecondClass.dart';
import 'package:beginner_level/ThirdClass.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Flutter begineer level course',
    home: FirstFile(),
  ));

}

class FirstFile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title: Text('First Beginner Level course'),
      shadowColor: Colors.blue,
      ),
      body: Center(child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => FirstClass()),);
              },child: Text('first example on flutter'),),

              MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => textex1()),);
              },child: Text('Second example on flutter'),),

              MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => LFutureBuilder()),);
              },child: Text('THIRD FUTURE example on flutter'),),
            ],
          )
        ]
        ),
        )
        );
  }
}