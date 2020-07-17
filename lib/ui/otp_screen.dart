import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  TextEditingController otpController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
          Text("Looks like  you're new here!",
          style: TextStyle(
              fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Please enter OTP we've sent you on ",
          style: TextStyle(
              color: Colors.black.withOpacity(0.6), fontSize: 18.0),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Text("+91-6753487988 ",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6), fontSize: 18.0),),
            SizedBox(
              width: 4.0,
            ),
            Text("Edit",
              style: TextStyle(color: Colors.blue,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),)
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(

          child: PinInputTextField(
            pinLength: 6,
            enabled: true,
            decoration: UnderlineDecoration(
                gapSpace: 10.0,
                enteredColor: Colors.red,
                color: Colors.blue
            ),
            controller: otpController,
            autoFocus: true,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.go,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text("Resend OTP", textAlign: TextAlign.end,
          style: TextStyle(color: Colors.blue,
              fontSize: 15.0,
              fontWeight: FontWeight.w600),),
        SizedBox(
          height: 30,
        ),

           Row(
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
                          "verify otp ".toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {

                        }),
                  ))
            ],
          ),

        ],
      ),


    ),);
  }
}
