import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Followers {
  final String image;
  final String name;

  Followers(this.image, this.name);
}

List<Followers> _followers = [
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
  Followers('assets/Follower2.jpg', 'Jane D.'),
  Followers('assets/Follower1.jpg', 'Jane D.'),
];

class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
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
        title: Text("Followers", style: TextStyle(fontSize: w * 0.06)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 30, right: 20),
        child: GridView.builder(
          itemCount: _followers.length,
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
                    radius: w * 0.06,
                    backgroundImage: AssetImage(_followers[index].image),
                  ),
                  SizedBox(height: h * 0.01),
                  Text(
                    _followers[index].name,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
