import 'package:flutter/material.dart';
import 'package:flutter_app5/model/camera_access.dart';
import 'package:flutter_app5/ui/expandable_list.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AQI"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
                onPressed: () =>
                    Fluttertoast.showToast(
                        msg: "Search Clicked",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    ),
            ),
            IconButton(
              icon: Icon(Icons.camera),
              onPressed: () => CameraAccess(),
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () =>
                  Fluttertoast.showToast(
                      msg: "Menu Clicked",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  ),
            ),
          ],
          backgroundColor: Colors.blue,),
        body: ExpandableList(),
      ),
    );
  }
}
