import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Followers {
  final String image;
  final String name;

  Followers(this.image, this.name);
}

List<Followers> _enrolledUsers = [
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
];

List<Followers> _dropouts = [
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
];

List<Followers> _completed = [
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
];

class ProgramDetails extends StatefulWidget {
  @override
  _ProgramDetailsState createState() => _ProgramDetailsState();
}

class _ProgramDetailsState extends State<ProgramDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#171824'),
      body: Stack(
        children: [
          Container(
            height: h * 0.3,
            width: w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/ProgramDetailsImage.jpg'),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: h * 0.06),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Program Details",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: w * 0.08,
                              fontWeight: FontWeight.bold)))
                ],
              ),
              SizedBox(height: h * 0.05),
              Center(child: ClassesCardProgramDetails(w, h)),
              SizedBox(height: h * 0.03),
              Padding(
                padding: EdgeInsets.only(left: w * 0.06),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enrolled Users",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: h * 0.02),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.only(left: w * 0.06, right: w * 0.06),
                  itemCount: _enrolledUsers.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: w * 0.05,
                      mainAxisSpacing: w * 0.04),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(w * 0.03),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: w * 0.055,
                            backgroundImage:
                                AssetImage(_enrolledUsers[index].image),
                          ),
                          SizedBox(height: h * 0.01),
                          Text(_enrolledUsers[index].name,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              //SizedBox(height: h * 0.03),
              Padding(
                padding: EdgeInsets.only(left: w * 0.06),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Dropouts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: h * 0.02),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.only(left: w * 0.06, right: w * 0.06),
                  itemCount: _dropouts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: w * 0.05,
                      mainAxisSpacing: w * 0.04),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(w * 0.03),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: w * 0.055,
                            backgroundImage: AssetImage(_dropouts[index].image),
                          ),
                          SizedBox(height: h * 0.01),
                          Text(_dropouts[index].name,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: w * 0.06),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Completed",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: h * 0.02),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.only(left: w * 0.06, right: w * 0.06),
                  itemCount: _completed.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: w * 0.05,
                      mainAxisSpacing: w * 0.04),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.all(w * 0.03),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: w * 0.055,
                            backgroundImage:
                                AssetImage(_completed[index].image),
                          ),
                          SizedBox(height: h * 0.01),
                          Text(_completed[index].name,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget ClassesCardProgramDetails(double w, double h) {
  return Container(
    width: w * 0.9,
    decoration: BoxDecoration(
      color: HexColor('#222332'),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    padding: EdgeInsets.only(left: w * 0.08, top: w * 0.05, bottom: w * 0.05),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: HexColor('#F96C8F'),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Text(
                'NEW',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'AERIAL WORKOUTS',
              style: TextStyle(
                  color: HexColor('#F96C8F'), fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.02,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Lift it again',
            style: TextStyle(
                fontSize: w * 0.07,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.1),
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Upper body • Weights',
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[400],
                letterSpacing: 1.1),
          ),
        ),
        SizedBox(
          height: h * 0.007,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Beginner • 24 min\n',
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[400],
                letterSpacing: 1.1),
          ),
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: HexColor('#F96C8F'), shape: BoxShape.circle),
              padding: EdgeInsets.all(w * 0.05),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jane Doe',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
                SizedBox(height: 4),
                Text(
                  'Aerial Workouts',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(
              width: w * 0.22,
            ),
          ],
        ),
      ],
    ),
  );
}
