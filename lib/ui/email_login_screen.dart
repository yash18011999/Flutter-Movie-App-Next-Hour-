import 'package:flutter/material.dart';

import 'otp_screen.dart';

class EmailLoginScreen extends StatefulWidget {
  @override
  _EmailLoginScreenState createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {

  TextEditingController _userPhoneController = new TextEditingController();

  Widget phoneTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextFormField(
                autofocus: true,
                controller: _userPhoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone Number ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.red),

                  ),
                  prefixIcon: Icon(
                    Icons.phone,
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

  Widget loginButton(){
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
                      "Send otp ".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    }),
              ))
        ],
      ),
    );
  }

  Widget scaffoldBody(){
    return Column(children: <Widget>[
      Container(

        margin: EdgeInsets.only(top: 50),
        child:  Icon(Icons.phone_android,
          size: 200,),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        alignment: Alignment.center,
        child: Text("Enter your mobile  number to create accout. ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25,color: Colors.black.withOpacity(0.7)),
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text("We will send you one time password (OTP)",

        style: TextStyle(color: Colors.grey),),

      SizedBox(
        height: 30.0,
      ),
      phoneTextField(),
      SizedBox(
        height: 30.0,
      ),
      loginButton(),
      SizedBox(
        height: 30.0,
      ),
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
      ),
      body:  SingleChildScrollView(
        child: scaffoldBody(),
      )
    );
  }
}
