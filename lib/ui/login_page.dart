import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:next_hour/ui/phone_login_screen.dart';

import 'email_login_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

//  Setting Logo image
  Widget logoImage(){
    return Image.asset("assets/images/logo.png",
      height: 250,
      width: 250,);
  }

  //sign up text
  signUpText(){
    return Text("Create a new account",
      style: TextStyle(

          color: Colors.red
      ),);
  }

// Logo container
  Widget logoContainer(){
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 70),
      child: Column(
        children: <Widget>[

          logoImage(),

          signUpText(),
          SizedBox(height: 4,),
          Container(height: 1.0,
            width: 138,
            color: Colors.red,
          )
        ],
      ),
    );
  }

//  Login with phone

  Widget loginWithPhone(){
    return Padding(padding: EdgeInsets.only(left: 35,right: 35),
      child: Row(
        children: <Widget>[
          Expanded(flex: 1,
              child: ButtonTheme(
                height: 50,
                child: RaisedButton(
                    splashColor: Colors.black54.withOpacity(0.08),
                    highlightColor: Colors.black54.withOpacity(0.008),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.red,width: 0.8,)
                    ),
                    color: Colors.white,
                    child: Text("login with phone number".toUpperCase(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ) ,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailLoginScreen()),
                      );
                    }),
              )
          )
        ],
      ),

    );
  }

//  Login With email
  loginWithEmail(){
    return Padding(padding: EdgeInsets.only(left: 35,right: 35),
      child: Row(
        children: <Widget>[
          Expanded(flex: 1,
              child: ButtonTheme(
                height: 50,
                child: RaisedButton(
                    splashColor: Colors.black54.withOpacity(0.08),
                    highlightColor: Colors.black54.withOpacity(0.008),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.red,width: 0.8,)
                    ),
                    color: Colors.white,
                    child: Text("log in with email".toUpperCase(),
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,

                      ) ,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhoneLoginScreen()),
                      );
                    }),
              )
          )
        ],
      ),

    );
  }
//   google sign in button
  signInButton(){
    return SignInButton(
      Buttons.Google,
      text: "Sign in with Google",
      onPressed: () {},
    );
  }
//  Facebook Sign in button
  facebookSignInButton(){
    return SignInButton(
      Buttons.Facebook,
      text: "Sign in with facebook",
      onPressed: () {},
    );
  }

  Widget scaffoldBody(){
    return Column(
      children: <Widget>[
        logoContainer(),
        SizedBox(
          height: 20.0,
        ),
        loginWithPhone(),
        SizedBox(
          height: 20.0,
        ),
        loginWithEmail(),
        SizedBox(
          height: 25.0,
        ),

        signInButton(),
        SizedBox(
          height: 10.0,
        ),
        facebookSignInButton(),
        SizedBox(
          height: 40.0,
        ),
        Text("Trouble logging in?",
          style: TextStyle(
              color: Colors.red
          ),)
      ],

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scaffoldBody(),
    );
  }
}
