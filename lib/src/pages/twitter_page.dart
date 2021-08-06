import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animate_do/animate_do.dart';

class TwitterPage extends StatefulWidget {
  @override
  _TwitterPageState createState() => _TwitterPageState();
}

class _TwitterPageState extends State<TwitterPage> {
  bool activar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1Da1f2),
      body: Center(
        child: ElasticInUp(
          duration: Duration(milliseconds: 1500),
          child: ZoomOut(
              animate: activar,
              duration: Duration(seconds: 1),
              // delay: Duration(milliseconds: 2000),
              from: 30,
              child: FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.white,
                size: 40,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: () {
          setState(() {
            activar=true;
          });
        },
      ),
    );
  }
}
