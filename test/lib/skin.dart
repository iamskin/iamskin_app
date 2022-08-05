import 'package:flutter/material.dart';

class skin extends StatefulWidget {
  const skin({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<skin> createState() => skinState();
}

class skinState extends State<skin>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.blueGrey,
                    constraints: BoxConstraints.tightFor(width: 450.0, height: 120.0),
                    child: const Text(
                        '\n\n皮膚檢測',
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                        textAlign: TextAlign.center
                    ),
                  ),
                  const Text(
                      '\n運用人工智慧評估皮膚膚質，\n取得膚質類型結果圖，\n以及皮膚照護衛教資訊。',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                      textAlign: TextAlign.center
                  ),
                  const Text(
                    '\n\n請選擇照片上傳方式',
                    style: TextStyle(fontSize: 25.0, color: Colors.black),
                  ),
                  Row(
                    children: [
                      const Text(
                        '     ',
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),

                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          padding: const EdgeInsets.all(20),
                          color: Colors.blueGrey,
                          child: const Text('     上傳照片     ', style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                      const Text(
                        '   ',
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          onPressed: () {},
                          padding: const EdgeInsets.all(20),
                          color: Colors.blueGrey,
                          child: const Text('        拍  照        ', style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                    ],
                  ),

                ]
            ),
          ],
        ),
      ),
    );
  }

}


