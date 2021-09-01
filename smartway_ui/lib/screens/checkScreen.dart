import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartway_ui/screens/checkedScreen.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckedScreen()));
            },
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
                  child: Text('Your account is being verified...',
                      style: TextStyle(
                          fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFB71744),
                          fontSize: 16.0)),
                ),
                Container(
                  child: Image(
                    image: AssetImage("assets/images/car_roadBg.jpg"),
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}








  