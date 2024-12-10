import 'package:flutter/material.dart';

class textex1 extends StatelessWidget{
  const textex1({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Text(
        "Simple Text Demo 'ohk ' ji ..",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 45,
          color: Colors.blue,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
        ),
        ),
    );
  }
}