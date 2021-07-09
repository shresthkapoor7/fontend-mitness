import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

import 'Login.dart';

class QR extends StatefulWidget {
  @override
  _QRState createState() => _QRState();
}

class _QRState extends State<QR> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w =MediaQuery.of(context).size.width;
    print('$h $w');
    return Stack(children: <Widget>[
      Container(
        color: HexColor('#171824'),
      ),
      SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Image.asset(
                      'assets/icon.png',
                      height: 0.104*h,
                      width: 0.231*w,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(0.023148*w),
                child: Stack(children: <Widget>[
                  Container(
                      width: 0.6851*w,
                      height: 0.531*h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(19),
                          topRight: Radius.circular(19),
                          bottomLeft: Radius.circular(19),
                          bottomRight: Radius.circular(19),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      )),
                  Positioned(
                      top: 0.479*h,
                      left: 0.28*w,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: LoginPage(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200)));
                        },
                        child: Container(
                            width: 0.081018*w,
                            height: 0.081018*w,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(0.081018*w, 0.081018*w)),
                            )),
                      )),
                  Positioned(
                    top: 0.47*h,
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.all(0.023148*w),
                        child: Container(
                          height: 0.081018*w ,
                          width: 0.081018*w,
                          child: Image.asset('assets/Upload.png'),
                        ),
                      ))

                ]),
              ),
              Padding(
                padding: EdgeInsets.all(0.023148*w*2),
                child: Text(
                  'Click or upload\none photo of \nyours',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'TTNorms',
                      fontSize: 21,
                      letterSpacing: 0 ,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              )
            ])),
      )
    ]);
  }
}
