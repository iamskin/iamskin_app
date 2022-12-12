import 'package:flutter/material.dart';
import 'skin.dart';
import 'nail.dart';
import 'acne.dart';
void main() {
  runApp(const MyApp());
}

const homePage = 'Home Page';
const skinPage = 'Skin Page';
const nailPage = 'Nail Page';
const acnePage = 'Acne Page';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '愛美膚iamSkin',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'iamSkin Home Page'),
      routes: routes
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('首頁')),
              Tab(child: Text('關於我們')),
              Tab(child: Text('服務項目')),
            ],
          ),
          title: const Text('iamSkin Home Page'),

        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text(
                  '\n智慧醫療\n聰明防老',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
                Text(
                  '愛美膚iamSkin\n結合AI與醫療守護您的健康與美麗\n\n\n',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                    textAlign: TextAlign.center
                ),
                Text(
                  'AI皮膚檢測工具',
                  style: TextStyle(fontSize: 28.0, color: Colors.black),
                ),
                Text(
                  '精準醫療的關鍵在於預防，愛美膚旨在透過AI人工智慧與\n醫療的跨域結合，提供創新且方便使用的醫療服務，從被\n動接受治療到主動預防疾病，以加強民眾之自主健康管理。\n\n\n',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                    textAlign: TextAlign.center
                ),
                Text(
                  '常見問題',
                  style: TextStyle(fontSize: 28.0, color: Colors.black),
                ),
                Text(
                  'Ｑ：愛美膚有什麼功能？',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                Text(
                  'Ｑ：使用檢測服務需要收費嗎?',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
                Text(
                  'Ｑ：使用服務時上傳的圖片會不會有資安疑慮？',
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                ),
               ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    '\n\nLine官方帳號',
                    style: TextStyle(fontSize: 32.0, color: Colors.black),
                  ),
                  const Text(
                    '掃描QR code加入Line好友\n',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Column(
                    children: [
                      Image.asset('assets/image/qrcode.jpg',
                      height: 200,)
                    ],
                  ),
                  const Text(
                    '\n聯絡資訊',
                    style: TextStyle(fontSize: 32.0, color: Colors.black),
                  ),
                  const Text(
                    'Email: uscciamskin@gmail.com',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text('\n\n\n'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  ),
                    onPressed: () {Navigator.of(context).pushNamed(skinPage);},
                    padding: const EdgeInsets.all(20),
                    color: Colors.blueGrey,
                    child: const Text('        膚質檢測        ', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {Navigator.of(context).pushNamed(nailPage);},
                    padding: const EdgeInsets.all(20),
                    color: Colors.blueGrey,
                    child: const Text('        指甲檢測        ', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {Navigator.of(context).pushNamed(acnePage);},
                    padding: const EdgeInsets.all(20),
                    color: Colors.blueGrey,
                    child: const Text('        痘痘檢測        ', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}

final routes = <String, WidgetBuilder>{
  homePage: (context) => const MyHomePage(title: "IamSkin"),
  skinPage: (context) => const skin(title: "IamSkin"),
  nailPage: (context) => const nail(title: "IamSkin"),
  acnePage: (context) => const acne(title: "IamSkin"),
};
