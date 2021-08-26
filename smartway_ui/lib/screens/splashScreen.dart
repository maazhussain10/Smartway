import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartway_ui/screens/loginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
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
                  child: Text('A smarter means to \n       travel today',
                      style: TextStyle(
                          fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF000000),
                          fontSize: 20.0)),
                ),
                Container(
                  child: Image(
                    image: AssetImage("assets/images/car_roadBg.jpg"),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Container(
                  child: RaisedButton(
                      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen())),
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Container(
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFFFFBB00),
                                Color(0xFFE1E128),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0))),
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                          ),
                        ),
                      )
                      ),
                ),
              ],
            )),
      ),
    );
  }
}
