import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';

class CameraAccess extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CameraAccess();
  }
}

class _CameraAccess extends State<CameraAccess>{

  File _image;

  Future getImage() async{
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState((){
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _image == null ? Text("No image selected") : Image.file(_image),
        ),
      ),
    );
  }

}