import 'package:flutter/material.dart';

class LFutureBuilder extends StatefulWidget{
  _State createState() => _State();
}


class _State extends State<LFutureBuilder>{
  Future<String> _countDown = Future<String>.delayed(
    Duration(seconds: 5),
    () => 'Data loaded'
  );


  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder<String>(
        future: _countDown,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot){
          List<Widget> children;
            if(snapshot.hasData){
              children = <Widget>[
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 60,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Result: ${snapshot.data}'),

                )
              ];
            }else if(snapshot.hasError){
              children = <Widget>[
                Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,

                ),
                Padding(
                  padding: const EdgeInsets.only(top:25),
                  child: Text('error, : : ${snapshot.error}'),
                ),

              ];
            }else{
              children = <Widget>[
                SizedBox(
                  child: CircularProgressIndicator(),
                  width:60,
                  height:60,
                ),
                const Padding(  
                  padding: EdgeInsets.only(top: 16),
                  child: Text("Awaiting result..........."),
                )
              ];
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: children,
              )
            );
        },
        )
    );
  }
}