import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.blue,
        // backgroundColor: Colors.blue[600],
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TextEditingController tecName = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: new InputDecoration(
                labelText: "Enter Name",
                fillColor: Colors.green,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Enter class',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[200],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.grey[200],
                          )
                        ],
                      ),
                    ))),
          )
        ],
      ),
    );
  }
}
