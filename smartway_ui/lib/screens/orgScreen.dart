import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:smartway_ui/screens/checkScreen.dart';
import 'package:smartway_ui/utilities/constraints.dart';

class OrgScreen extends StatefulWidget {
  @override
  _OrgScreenState createState() => _OrgScreenState();
}

class _OrgScreenState extends State<OrgScreen> {
  
  final orgController = TextEditingController();
  final positionController = TextEditingController();
  final proofController = TextEditingController();
  final aadharController = TextEditingController();
  

  
  
 
  Widget _textFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Email Field
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: orgController,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              fontStyle: FontStyle.italic,
            ),
            decoration: InputDecoration(
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.text_fields,
                color: Color(0xFF707070),
              ),
              hintText: 'Organization',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: positionController,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              fontStyle: FontStyle.italic,
            ),
            decoration: InputDecoration(
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF707070),
              ),
              hintText: 'Position',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        // Password Field
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: proofController,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              fontStyle: FontStyle.italic,
            ),
            decoration: InputDecoration(
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.badge,
                color: Color(0xFF707070),
              ),
              hintText: 'Aadhar no (XXXX XXXX XXXX)',
              hintStyle: kHintTextStyle,
              
              
              
              
            ),
          ),
        ),
        SizedBox(height: 20.0),
       
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: aadharController,
           keyboardType: TextInputType.name,
            style: TextStyle(
              color: Color(0xFF000000),
              fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              fontStyle: FontStyle.italic,
            ),
            decoration: InputDecoration(
              enabledBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.black),
              ),
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.card_giftcard,
                color: Color(0xFF707070),
              ),
              hintText: 'ID proof',
              hintStyle: kHintTextStyle,
              
              
            ),
          ),
        ),
        SizedBox(height: 20.0),
        
      ],
    );
  }
Widget _buildLoginBtn() {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>CheckScreen()))
      },
       
  
      child: Container(
        
        child: RaisedButton(
            onPressed: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>CheckScreen()))
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
                'Scan/Upload',
                style: TextStyle(
                  color: Color(0xFF000000),
                  letterSpacing: 1.5,
                  fontSize: 25.0,
                  
                  fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                ),
              ),
               
            )),
            ),
    );
  }
  
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CheckScreen()))
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
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                            fontSize: 35.0)),
                  ),
                  Container(
                    child: Text('way',
                        style: TextStyle(
                            fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFB300),
                            fontSize: 35.0)),
                  ),
                ],
              ),
              Container(
                child: Text('Let us know a \n few more details...',
                    style: TextStyle(
                        fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                        fontSize: 30.0)),
              ),
                            
              _textFields(),
              _buildLoginBtn(),
              
            
          
              
            ],
          ),
        ),
      ),
    );
  }
}
