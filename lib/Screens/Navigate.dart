import 'package:flutter/material.dart';
import 'package:ketho/Components/RoundedButton.dart';
import 'package:ketho/Screens/About.dart';
import 'package:ketho/Screens/Feedback.dart';
import 'package:ketho/Screens/Profile.dart';

class Navigate extends StatelessWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(),
          RoundedButton(
              text: 'Feedback Page',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FeedBack()));
              }),
          Spacer(),
          RoundedButton(text: 'Profile Page', onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          }),
          Spacer(),
          RoundedButton(text: 'About Page', onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutUsPage()));
          }),
          Spacer(),
        ],
      ),
    );
  }
}
