import 'package:flutter/material.dart';

class TilePageEx1 extends StatefulWidget{
  @override  
  _TilePageEx1State createState() => _TilePageEx1State;
}


class _TilePageEx1 extends State<TilePAgeEx1>{
  bool _selected1 = true;
  bool _checkBoxValue1 = false;
  bool _switchValue1 = false;
  List<bool> expands1 = [true,false,false,false];

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(  
        children:<Widget>[  
          Padding(  
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "List Tile Ex",style: Theme.of(context).textTheme.subhead),
          ),
          ListTile(
            trailing: PopupMenuButton(  
              itemBuilder: (_)=> [PopupMenuItem(child: T )],
            )
          )
        ]
      )
    )
  }
}