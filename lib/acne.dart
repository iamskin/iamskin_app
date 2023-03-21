import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'view.dart';
import 'package:image_picker/image_picker.dart';

class acne extends StatefulWidget {
  const acne({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<acne> createState() => acneState();
}

class acneState extends State<acne> {

  String? _imageFile;
  var _width;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(title: const Text('痘痘檢測'), backgroundColor: Colors.blueGrey,),
        body: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                        '\n運用人工智慧評估痘痘嚴重程度，\n取得痘痘嚴重程度結果圖，\n以及痘痘照護衛教資訊。',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                        textAlign: TextAlign.center
                    ),
                    const Text(
                      '\n\n請選擇照片上傳方式\n',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: _previewImage(context),
                      ),
                    ),
                    const Text(
                      '\n',
                      style: TextStyle(fontSize: 25.0, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(20),
                              primary: Colors.blueGrey,
                            ),
                            onPressed: () {
                              onImageButtonPressed(
                                ImageSource.gallery, context: context,
                                capturedImageFile: (s) {
                                  print("file path  ${s}");
                                  setState(() {
                                    _imageFile = s;
                                  });
                                },
                              );
                            },
                            child: const Text(
                              '     上傳照片     ',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const Text(
                          '   ',
                          style: TextStyle(fontSize: 25.0, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(20),
                              primary: Colors.blueGrey,
                            ),
                            onPressed: () {
                              onImageButtonPressed(
                                ImageSource.camera,
                                context: context,
                                capturedImageFile: (s) {
                                  setState(() {
                                    _imageFile = s;
                                  });
                                },
                              );
                            },
                            child: const Text(
                              '        拍  照        ',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]
              )
            ]
        ));
  }

  Widget _previewImage(
      BuildContext context,
      ) {
    _width = MediaQuery.of(context).size.width;
    if (_imageFile != null) {
      return Container(
        height: _width * 0.34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "${_imageFile}",
            height: _width * 0.34,
            width: _width,
            alignment: Alignment.center,
            fit: BoxFit.fitWidth,
          ),
        ),
      );
    } else {
      return Container(
        height: _width * 0.34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.grey,
        ),
        child: Center(
          child: Image.asset(
            'assets/image/upload.png',
            width: 50,
            height: 50,
          ),
        ),
      );
    }
  }
}

