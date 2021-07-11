import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.wallpapersafari.com/90/47/UhE15c.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                await launch('https://www.youtube.com/');
              },
              child: Icon(
                Icons.favorite,
                size: 100.0,
                color: Colors.red,
              ),
            ),
            Text(
              'LOGIN WAS SUCCESSFULL',
              style: TextStyle(
                  backgroundColor: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.logout_rounded,
                size: 100.0,
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
