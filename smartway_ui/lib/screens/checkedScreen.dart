import 'package:flutter/material.dart';
import 'package:smartway_ui/screens/Dashboard.dart';

/// This is the main application widget.
class CheckedScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Account verified'),
                content: const Text('You are now all ready to use the app!'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashScreen()));
                    },
                    child: const Text('Continue →'),

                  ),
                  
                ],
              ),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage("assets/images/logo.jpg"),
                  ),
                ),
                Container(
                  child: Text('Smart',
                      style: TextStyle(
                          fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF000000),
                          fontSize: 35.0)),
                ),
                Container(
                  child: Text('way',
                      style: TextStyle(
                          fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFFFB300),
                          fontSize: 35.0)),
                ),
              ],
            ),
            Container(
              child: Text('Your account is verified!🙂',
                  style: TextStyle(
                      fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF69F0AE),
                      fontSize: 16.0)),
            ),
            Container(
              child: Image(
                image: AssetImage("assets/images/car_roadBg.jpg"),
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ));
  }
}
