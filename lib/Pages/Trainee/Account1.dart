import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyAccount1 extends StatefulWidget {
  @override
  _MyAccount1State createState() => _MyAccount1State();
}

bool obscureText = true;

class _MyAccount1State extends State<MyAccount1> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      appBar: AppBar(
        backgroundColor: HexColor('#222332'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("My Account", style: TextStyle(fontSize: w * 0.06)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          padding:
              EdgeInsets.only(left: w * 0.06, top: h * 0.02, right: w * 0.06),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: w * 0.08,
                    backgroundImage: AssetImage('assets/Account Profile.jpg'),
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Text(
                    'Change Profile Photo',
                    style: TextStyle(
                        fontSize: w * 0.04, color: HexColor('#6A40F3')),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textField(h: h, w: w * 0.45, hintText: "First Name"),
                  _textField(h: h, w: w * 0.45, hintText: "Last Name"),
                ],
              ),
              SizedBox(height: h * 0.02),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: HexColor('#8D99B2'), width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.07,
                  width: w * 0.9,
                  padding: EdgeInsets.only(left: 15),
                  child: Center(
                    child: TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                        style: TextStyle(color: Colors.white)),
                  )),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: HexColor('#8D99B2'), width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.07,
                  width: w * 0.9,
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                            obscureText: obscureText,
                            style: TextStyle(color: Colors.white)),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: (obscureText)
                                ? Colors.grey
                                : HexColor("#F96C8F"),
                          ),
                          onPressed: () {
                            setState(() {
                              if (obscureText) {
                                obscureText = false;
                              } else {
                                obscureText = true;
                              }
                            });
                          })
                    ],
                  )),
              SizedBox(height: h * 0.02),
              _textField(h: h * 2, w: w, hintText: "Introduction"),
              SizedBox(height: h * 0.02),
              _textField(h: h * 1.5, w: w, hintText: "Brief History"),
              SizedBox(height: h * 0.02),
              _textField(h: h * 1.2, w: w, hintText: "Careers"),
              SizedBox(
                height: h * 0.02,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: HexColor("#F96C8F"),
                      elevation: 0),
                  child: Container(
                      height: h * 0.07,
                      child: Center(
                          child: Text(
                        "Save",
                        style: TextStyle(fontSize: w * 0.04),
                      ))),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField({double h = 0, double w = 0, required String hintText}) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: HexColor('#8D99B2'), width: 0.2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: h * 0.07,
        width: w * 0.9,
        padding: EdgeInsets.only(left: 15),
        child: Center(
          child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
              style: TextStyle(color: Colors.white)),
        ));
  }
}
