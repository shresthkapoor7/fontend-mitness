import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPassword2 extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword2> {
  var phoneCode = '+91';

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff171824),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
            ),
            Padding(
              padding: EdgeInsets.all(w / 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: w / 3.3),
                      Container(
                        height: w / 45,
                        width: w / 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF96C8F),
                            borderRadius: BorderRadius.all(Radius.circular(w/45))
                        ),
                      ),
                      SizedBox(width: w / 30),
                      Container(
                        height: w / 45,
                        width: w / 45,
                        decoration: BoxDecoration(
                            color: Color(0xffAAB2BA),
                            borderRadius: BorderRadius.all(Radius.circular(w/45))
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: w / 11.25,
                    backgroundColor: Color(0xffF96C8F),
                    child: Center(
                      child: Icon(
                        Icons.mail_outline_rounded,
                        color: Colors.white,
                        size: w / 12,
                      ),
                    ),
                  ),
                  SizedBox(height: w / 24),
                  Text(
                    "Verification",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                        fontSize: w / 11.25
                    ),
                  ),
                  SizedBox(height: w / 24),
                  Text(
                    "Enter your email/password and we'll send you a OTP",
                    style: TextStyle(
                        color: Color(0xffAAB2BA),
                        fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                        fontSize: w / 20
                    ),
                  ),
                  SizedBox(height: w / 24),
                  Theme(
                    data: ThemeData(
                      primaryColor: Color(0xffAAB2BA),
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: Color(0xffAAB2BA),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffAAB2BA),
                      ),
                      decoration: InputDecoration(
                          labelText: 'Email Address',
                          labelStyle: TextStyle(
                              color: Color(0xffAAB2BA),
                              fontWeight: FontWeight.bold
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(w / 30)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(w / 30)),
                            borderSide: BorderSide(color: Color(0xffAAB2BA)),
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xffAAB2BA),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: w / 6),
                  Center(
                    child: Text(
                      "or",
                      style: TextStyle(
                          color: Color(0xffAAB2BA),
                          fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                          fontSize: 18
                      ),
                    ),
                  ),
                  SizedBox(height: w / 6),
                  Theme(
                    data: ThemeData(
                      primaryColor: Color(0xffAAB2BA),
                      textSelectionTheme: TextSelectionThemeData(
                        cursorColor: Color(0xffAAB2BA),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Color(0xffAAB2BA),
                      ),
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: w / 45),
                          child: DropdownButton(
                            value: phoneCode,
                            style: TextStyle(
                                color: Colors.white
                            ),
                            dropdownColor: Color(0xff171824),
                            iconEnabledColor: Colors.white,
                            underline: SizedBox(),
                            items: ['+91', '+86'].map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Color(0xffAAB2BA),
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                phoneCode = value.toString();
                              });
                            },
                          ),
                        ),
                        labelStyle: TextStyle(
                            color: Color(0xffAAB2BA),
                            fontWeight: FontWeight.bold
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(w / 30)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(w / 30)),
                          borderSide: BorderSide(color: Color(0xffAAB2BA)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: w / 2),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(w / 30))),
                    color: Color(0xffF96C8F),
                    child: Text(
                      'Recover password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                          fontSize: w / 24
                      ),
                    ),
                    minWidth: w,
                    height: w / 8,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: OtpScreen(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 625)));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff171824),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: h,
              width: w,
            ),
            Padding(
              padding: EdgeInsets.all(w / 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(width: w / 3.3),
                      Container(
                        height: w / 45,
                        width: w / 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF96C8F),
                            borderRadius: BorderRadius.all(Radius.circular(w/45))
                        ),
                      ),
                      SizedBox(width: w / 30),
                      Container(
                        height: w / 45,
                        width: w / 45,
                        decoration: BoxDecoration(
                            color: Color(0xffF96C8F),
                            borderRadius: BorderRadius.all(Radius.circular(w/45))
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: w / 11.25,
                    backgroundColor: Color(0xffF96C8F),
                    child: Center(
                      child: Icon(
                        Icons.mail_outline_rounded,
                        color: Colors.white,
                        size: w / 12,
                      ),
                    ),
                  ),
                  SizedBox(height: w / 24),
                  Text(
                    "Enter the 4-digit\ncode sent to you",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                        fontSize: w / 11.25
                    ),
                  ),
                  SizedBox(height: w / 2),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(w / 30))),
                    color: Color(0xffF96C8F),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,fontFamily: 'TTNorms',
                          fontSize: w / 24
                      ),
                    ),
                    minWidth: w,
                    height: w / 8,
                    onPressed: () {

                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: w / 1.2),
              child: Theme(
                  data: ThemeData(
                    primaryColor: Color(0xffAAB2BA),
                    textSelectionTheme: TextSelectionThemeData(
                      cursorColor: Color(0xffAAB2BA),
                    ),
                  ),
                  child: PinCodeTextField(
                    keyboardType: TextInputType.number,
                    appContext: context,
                    length: 4,
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                    cursorColor: Colors.white,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.circle,
                        fieldWidth: 90,
                        borderRadius: BorderRadius.all(Radius.circular(90)),
                        activeColor: Colors.white,
                        inactiveColor: Color(0xffAAB2BA)
                    ),
                    onChanged: (value) {

                    },
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

