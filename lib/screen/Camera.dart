import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  PickedFile _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 490,
            width: 360,
            child: _image == null
                ? Text('No Image',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff075E54),
                        fontSize: 40.0))
                : Image.file(File(_image.path)),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          RaisedButton(
            onPressed: _optionDialogBox,
            child: Text(
              'Press me',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            color: Color(0xff075E54),
          )
        ],
      ),
    );
  }

  Future openCamera() async {
    final _picker = ImagePicker();
    final image = await _picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future openGallery() async {
    final _picker = ImagePicker();
    final picture = await _picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = picture;
    });
  }

  Future<void> _optionDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xff075E54),
            shape: RoundedRectangleBorder(),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Take a picture',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0)),
                    onTap: openCamera,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GestureDetector(
                    child: Text('Open Gallery',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 20.0)),
                    onTap: openGallery,
                  )
                ],
              ),
            ),
          );
        });
  }
}
