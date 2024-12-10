import 'package:flutter/material.dart';

class FirstClass extends StatelessWidget{
  const FirstClass({Key? key }):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Text("Iten1: flex-1"),
              color: const Color.fromARGB(255, 191, 25, 50),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text('item2: flex-2'),
              color: Colors.blue[500],
            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 3,
              child: Container(  
                child: Text('Item3: flex3'),
                color: Colors.green[900],
              ),
            )
        ],
      ),
    );
  }
}