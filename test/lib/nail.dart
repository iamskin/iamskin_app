import 'package:flutter/material.dart';
import 'main.dart';
class nail extends StatefulWidget {
  const nail({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<nail> createState() => nailState();
}

class nailState extends State<nail>{

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
                    child: Column(
                      children:[
                        Padding(
                          padding: const EdgeInsets.only(right: 350.0, top: 10),
                          child: TextButton(
                              onPressed: () {Navigator.of(context).pushNamed(homePage);},
                              child:  Image.asset('assets/image/home.png', height: 30,)
                          ),
                        ),
                        const Text(
                            '指甲檢測',
                            style: TextStyle(fontSize: 28.0, color: Colors.white),
                            textAlign: TextAlign.center
                        ),
                      ]
                    )
                  ),
                  const Text(
                    '\n運用人工智慧評估指甲異常風險，\n取得指甲異常風險結果圖，\n以及指甲照護衛教資訊。',
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


