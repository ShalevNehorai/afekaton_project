import 'package:afekaton_project/dialogs/ac_dialog.dart';
import 'package:afekaton_project/dialogs/input_text_dialog.dart';
import 'package:afekaton_project/dialogs/yes_no_dialog.dart';
import 'package:afekaton_project/screens/ac_temp_layout.dart';
import 'package:afekaton_project/screens/camera_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ClassRoom extends StatefulWidget {
  final DocumentReference userInClass;

  ClassRoom(this.userInClass);

  @override
  _ClassRoomState createState() => _ClassRoomState();
}

class _ClassRoomState extends State<ClassRoom> {
  bool raisedHand = false;
  bool frasteraded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text(
              "Class: Fikus 101"), // + widget.userInClass.parent.parent.id),//TODO remove comment
        ),*/
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/theme2.jpeg"), fit: BoxFit.cover)),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            // child: Image(image: AssetImage("images/theme2.jpeg")),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: TextFormField(
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.send),
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: GridView.count(
                shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 25,
                padding: const EdgeInsets.all(40),
                children: [
                  GridButton(
                    //camera
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CameraSCreen()));
                    },
                    icon: Icons.camera_alt, //Icons.screen
                  ),
                  GridButton(
                    //raise hand
                    onTap: () {
                      setState(() {
                        raisedHand = !raisedHand;
                      });
                    },
                    color: raisedHand ? Colors.red : Colors.cyan,
                    icon: Icons.pan_tool,
                  ),
                  GridButton(
                    //air conditioner
                    onTap: () {
                      showDialog(
                          context: context, builder: (context) => AcDialog());
                    },
                    onLongPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AcTempImg()));
                    },
                    icon: Icons.ac_unit,
                  ),
                  GridButton(
                    //frasterated
                    onTap: () {
                      setState(() {
                        frasteraded = !frasteraded;
                      });
                    },
                    icon: MdiIcons.accountQuestionOutline,
                    color: frasteraded ? Colors.red : Colors.blue,
                  ),
                  GridButton(
                    //questions
                    icon: MdiIcons.chatQuestion,
                  ),
                  GridButton(
                    icon: Icons.bluetooth,
                  )
                ],
              ))
        ],
      ),
    ));
  }
}

class GridButton extends StatelessWidget {
  final IconData icon;
  Color color = Colors.cyan;
  final Function onTap;
  final Function onLongPress;

  GridButton(
      {this.icon, this.color = Colors.cyan, this.onTap, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          elevation: 2,
          color: onTap != null ? color : Colors.grey,
          child: Icon(
            icon,
            size: 40,
          )),
    );
  }
}
