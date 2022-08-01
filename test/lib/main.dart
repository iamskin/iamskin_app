import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'iamSkin Home Page'),
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
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text('首頁')),
              Tab(child: Text('關於我們')),
              Tab(child: Text('服務項目')),
            ],
          ),
          title: Text('iamSkin Home Page'),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  '智慧醫療聰明防老',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
                Text(
                  '愛美膚iamSkin結合AI與醫療守護您的健康與美麗',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                Text(
                  'AI皮膚檢測工具',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
                Text(
                  '精準醫療的關鍵在於預防，愛美膚旨在透過AI人工智慧與醫療的跨域結合，提供創新且方便使用的醫療服務，從被動接受治療到主動預防疾病，以加強民眾之自主健康管理。',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                Text(
                  '常見問題',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
                Text(
                  'Ｑ：愛美膚有什麼功能？',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
               ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Line官方帳號',
                    style: TextStyle(fontSize: 32.0, color: Colors.black),
                  ),
                  Text(
                    '掃描QR code加入Line好友',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                  Text(
                    '聯絡資訊',
                    style: TextStyle(fontSize: 32.0, color: Colors.black),
                  ),
                  Text(
                    'Email: uscciamskin@gmail.com',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  '膚質檢測',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
                Text(
                  '指甲檢測',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
                Text(
                  '痘痘檢測',
                  style: TextStyle(fontSize: 32.0, color: Colors.black),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
