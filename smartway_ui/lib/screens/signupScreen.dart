import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:smartway_ui/screens/loginScreen.dart';
import 'package:smartway_ui/screens/orgScreen.dart';
import 'package:smartway_ui/utilities/constraints.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  Widget _textFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // First Name Field
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: firstNameController,
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
              hintText: 'First Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        // Email Field
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: lastNameController,
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
              hintText: 'Last Name',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        // Email Field
        Container(
          alignment: Alignment.center,
          height: 60.0,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
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
              hintText: 'abc@gmail.com',
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
            controller: passwordController,
            obscureText: true,
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
                Icons.lock,
                color: Color(0xFF707070),
              ),
              hintText: '***********',
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      child: RaisedButton(
          onPressed: () => {
               Navigator.push(
            context, MaterialPageRoute(builder: (context) => OrgScreen())),
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

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()))
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account, ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                fontStyle: FontStyle.italic,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                color: Color(0xFFFFB300),
                fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- Or -',
          style: TextStyle(
            color: Colors.grey,
            fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
        onTap: () => print('login with google pressed'),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 6.0,
                ),
              ],
              image: DecorationImage(
                image: logo,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
            width: 30.0,
          ),
          Text(
            'Sign Up with Google',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          ),
        ]));
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/images/google.jpg',
            ),
          ),
          SizedBox(height: 20.0),
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/images/facebook.jpg',
            ),
          ),
        ],
      ),
    );
  }

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
                child: Text('Sign Up',
                    style: TextStyle(
                        fontFamily: 'assets/fonts/KaiseiOpti-Medium.ttf',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                        fontSize: 30.0)),
              ),
              _textFields(),
              _buildLoginBtn(),
              _buildSignupBtn(),
              _buildSignInWithText(),
              _buildSocialBtnRow(),
            ],
          ),
        ),
      ),
    );
  }
}