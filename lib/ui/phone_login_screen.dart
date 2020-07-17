import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class PhoneLoginScreen extends StatefulWidget {
  @override
  _PhoneLoginScreenState createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  bool passwordVisible = false;
  TextEditingController _userPasswordController = new TextEditingController();
  TextEditingController _userEmailController = new TextEditingController();

  @override
  void initState() {
    passwordVisible = false;
  }

//   Setting Logo image
  Widget logoImage() {
    return Image.asset(
      "assets/images/logo.png",
      height: 250,
      width: 250,
    );
  }

  //sign up text
  signUpText() {
    return Text(
      "Don't have an  account",
      style: TextStyle(color: Colors.red),
    );
  }

// Logo container
  Widget logoContainer() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 70),
      child: Column(
        children: <Widget>[
          logoImage(),
          signUpText(),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 1.0,
            width: 138,
            color: Colors.red,
          )
        ],
      ),
    );
  }

//  Login with phone

  Widget phoneTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextFormField(
                controller: _userEmailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.red),

                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  labelStyle: TextStyle(color: Colors.red),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget passTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextFormField(
                controller: _userPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.red),

                  ),
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Colors.red,
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.only(top: 15,right: 20),
                    child: GestureDetector(
                      child: passwordVisible ? Text("Hide") : Text("Show"),
                      onTap: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),
                  ),

                  labelText: "Password ",
                  labelStyle: TextStyle(color: Colors.red),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
//                  disabledBorder: OutlineInputBorder(
//                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
//                    borderRadius: BorderRadius.circular(30.0),
//                  ),
                ),
                obscureText: passwordVisible == false ? true : false,
              ))
        ],
      ),
    );
  }

//  Login With email
  Widget loginButton() {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: ButtonTheme(
                height: 50,
                child: RaisedButton(
                    splashColor: Colors.black54.withOpacity(0.08),
                    highlightColor: Colors.black54.withOpacity(0.008),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          color: Colors.red,
                          width: 0.8,
                        )),
                    color: Colors.red,
                    child: Text(
                      "login".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {}),
              ))
        ],
      ),
    );
  }

//   google sign in button
  signInButton() {
    return SignInButton(
      Buttons.Google,
      text: "Sign in with Google",
      onPressed: () {},
    );
  }

//  Facebook Sign in button
  facebookSignInButton() {
    return SignInButton(
      Buttons.Facebook,
      text: "Sign in with facebook",
      onPressed: () {},
    );
  }

  Widget scaffoldBody() {
    return Column(
      children: <Widget>[
        logoContainer(),
        SizedBox(
          height: 20.0,
        ),
        phoneTextField(),
        SizedBox(
          height: 21.0,
        ),
        passTextField(),
        SizedBox(
          height: 30.0,
        ),
        loginButton(),
        SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: scaffoldBody(),
    ));
  }
}
