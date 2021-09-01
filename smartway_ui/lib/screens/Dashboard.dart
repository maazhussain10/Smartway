import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:smartway_ui/screens/checkScreen.dart';
import 'package:smartway_ui/screens/signupScreen.dart';
import 'package:smartway_ui/utilities/constraints.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashScreen> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
    getDataFromUi();
  }

  getDataFromUi() async {
    loading = false;
    setState(() {
      loading = true;
    });
  }
  Widget buildLoginBtn() {
    return Container(
      child: RaisedButton(
          onPressed: () => {
               Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUp())),
              },
          padding: const EdgeInsets.all(0.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFFFBB00),
                    Color(0xFFE1E128),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0))),
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Color(0xFF000000),
                letterSpacing: 1.5,
                fontSize: 25.0,
                fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(top: 12),
              child: Column(
                children: <Widget>[
                  MediaQuery.of(context).size.width < 1300
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  
                          
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                      )
                ],
              ),
            ),
          ]),
        ),
        
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 1300 ? 4 : 3,
            childAspectRatio:
                MediaQuery.of(context).size.width < 1300 ? 0.6 : 0.65,
            mainAxisSpacing: 10,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                  
          borderRadius: BorderRadius.circular(80.0),
                ),
                elevation: 2,
                margin:
                    EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'data:image/jpeg;base64,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',
                          fit: BoxFit.fill,
                        ),
                        
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Urgent",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '''2 kms away from you!
                                  Cause: Heart Attack''',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'HelveticaNeue',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "800/night",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'HelveticaNeue',
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.location_on),
                                        Text(
                                          "chennai,tamilnadu",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'HelveticaNeue',
                                          ),
                                        ),
                                        Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 12,
                                    
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'HelveticaNeue',
                                    
                                  ),
                                ),
                                
                              ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 6,

                              ),
                              Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFFFFBB00),
                    Color(0xFFE1E128),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0))),
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
            child: const Text(
              'Attend now!',
              style: TextStyle(
                color: Color(0xFF000000),
                letterSpacing: 1.5,
                fontSize: 25.0,
                fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              ),
            ),
          ),
                            ],
                          ),
                        ),
                      ]),
                ),
                
              );
            },
            childCount: 8,
            
          ),
        )
      ],
    );
    
  }
}