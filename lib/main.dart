// @dart=2.9
import 'dart:io';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';

import 'SecondScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aswarth ",
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
          primarySwatch: Colors.green),
      home: MyHomePage(title: 'Aswarth'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Aswarth Reddy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white,
                backgroundColor: Colors.black38,
              )),
        ),
        actions: [
          InkWell(
            onTap: () => exit(0),
            child: Icon(
              Icons.logout,
              size: 30.0,
              color: Colors.black,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Text('Welcome'),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.green,
            ),
            ListTile(
              title: Text(
                'Wishlist',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.green,
            ),
            ListTile(
              title: Text(
                'Orders',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              thickness: 2,
              color: Colors.green,
            ),
            ListTile(
              title: Text(
                'Help..?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Icon(Icons.help),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () async {
                          await launch('https://twitter.com/explore');
                        },
                        child: Image.asset('images/pic1.png'))),
                Expanded(
                  flex: 2,
                  child: InkWell(
                      onTap: () async {
                        await launch('https://www.whatsapp.com/?lang=en');
                      },
                      child: Image.asset('images/pic4.png')),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () async {
                        await launch('https://in.linkedin.com/');
                      },
                      child: Image.asset('images/pic3.png')),
                ),
              ],
            ),
            SizedBox(
              height: 200.0,
              width: 200.0,
              child: Image.network(
                  'https://ih1.redbubble.net/image.683518800.8491/st,small,507x507-pad,600x600,f8f8f8.jpg'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 90.0,
              width: 170.0,
              color: Colors.grey,
              child: Center(
                child: Column(
                  children: [
                    Text("Welcome to Flutter",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Icon(Icons.headphones),
                  ],
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                child: Text("LOGIN")),
            Text(
              'This is Aswarth Reddy',
              style: TextStyle(
                  backgroundColor: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Welcome to Flutter Project',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 50.0,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.home,
                      size: 50.0,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.circle_outlined,
                      size: 50.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
