import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ClassRoom extends StatefulWidget {
  final DocumentReference userInClass;

  ClassRoom(this.userInClass);

  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class: " + widget.userInClass.parent.parent.id),
      ),
      body: Column(
        children: [
          Expanded(flex: 6, child: Center(child: Text("Chat here"))),
          Expanded(
              flex: 3,
              child: GridView.count(
                crossAxisCount: 4,
                children: [
                  GridTile(child: Icon(Icons.bluetooth_audio)),
                  GridTile(child: Icon(Icons.emoji_people)),
                  GridTile(child: Icon(Icons.fit_screen)),
                  GridTile(child: Icon(Icons.ac_unit)),
                ],
              ))
        ],
      ),
    );
  }
}
