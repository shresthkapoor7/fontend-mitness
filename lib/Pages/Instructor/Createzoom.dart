import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';

class CreateZoomClass extends StatefulWidget {
  @override
  _CreateZoomClassState createState() => _CreateZoomClassState();
}

class _CreateZoomClassState extends State<CreateZoomClass> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          padding:
              EdgeInsets.only(left: w * 0.06, top: h * 0.02, right: w * 0.06),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: HexColor("2D8CFF"),
                      elevation: 0),
                  child: Container(
                      height: h * 0.07,
                      width: w * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: w * 0.15,
                            width: w * 0.15,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/Zoom.png'))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Live Classes",
                            style: TextStyle(fontSize: w * 0.04),
                          ),
                        ],
                      )),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              _textField(h: h * 0.8, w: w, hintText: "Class Name"),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: HexColor('#8D99B2'), width: 0.2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.055,
                  width: w * 0.9,
                  padding: EdgeInsets.only(left: 10, right: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Category",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                            style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  )),
              SizedBox(height: h * 0.02),
              _textField(h: h * 0.8, w: w, hintText: "Price"),
              SizedBox(height: h * 0.02),
              _textField(h: h * 2, w: w, hintText: "Description"),
              SizedBox(height: h * 0.02),
              Container(
                width: w * 0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: HexColor('#222332')),
                padding: EdgeInsets.only(
                    left: w * 0.05,
                    top: h * 0.02,
                    right: w * 0.05,
                    bottom: h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Class 1",
                      style: TextStyle(color: Colors.white, fontSize: w * 0.06),
                    ),
                    SizedBox(height: h * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _textField(h: h * 0.7, w: w * 0.4, hintText: "Time"),
                        _textField(h: h * 0.7, w: w * 0.4, hintText: "Date")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: CircleBorder(),
                      primary: HexColor("#F96C8F")),
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              SizedBox(height: h * 0.02),
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
