import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<result> createState() => resultState();
}

class resultState extends State<result> {

  var _width;
  var result=Image.asset('assets/image/acne_middle.png');

  @override
  Widget build(BuildContext context) {

    /*
    if(key == 0) {result ; }
    else if(key == 1 && prediction == 'Mild') {result = Image.asset('assets/image/acne_low.png');}
    else if(key == 1 && prediction == 'Moderate') {result = Image.asset('assets/image/acne_middle.png');}
    else if(key == 1 && prediction == 'Severe') {result = Image.asset('assets/image/acne_m_high.png');}
    else if(key == 1) {result = Image.asset('assets/image/acne_high.png');}
    else if(key == 2 && prediction == 'Moderate') {result = Image.asset('assets/image/acne_middle.png');}
    else if(key == 2 && prediction == 'Moderate') {result = Image.asset('assets/image/acne_middle.png');}
    */


    _width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('檢測結果'), backgroundColor: Colors.blueGrey,),
        body: ListView(
            children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  '\n您的檢測結果如下:\n',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center
                ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),


                  child: result,
                  ),
                ),
              ]
            )
          ]
        )
    );
  }
}
