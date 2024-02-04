import 'package:flutter/material.dart';
import 'package:ketho/Components/RoundedButton.dart';
import 'package:ketho/Screens/Profile.dart';
import 'package:ketho/Screens/Rewards.dart';

import 'Feedback.dart';
import 'Payments.dart';
import 'TripHistory.dart';

class HomepageDrawer extends StatelessWidget {
  const HomepageDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.orange,
                  Colors.white,
                ])),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_pin,
                      size: 60,
                    ),
                    Column(
                      children: [
                        Text(
                          'Kenneth Ho',
                          style: TextStyle(fontSize: 25),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.greenAccent,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.shield,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Text(
                                  'Sustainibility Score: 150',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    StatCard(
                      value: '242.72',
                      type: 'Distance(km)',
                      fore: Colors.green,
                      back: Color(0xA395E06D),
                    ),
                    StatCard(
                      value: '5,585.02',
                      type: 'Calories(kcal)',
                      fore: Color(0xffE18901),
                      back: Color(0xfff6daa8),
                    ),
                    StatCard(
                      value: '23.27',
                      type: 'Carbon(kg)',
                      fore: Colors.green,
                      back: Color(0xA395E06D),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_outline_rounded),
                SizedBox(
                  width: 8,
                ),
                Text('Profile'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.wallet),
                SizedBox(
                  width: 8,
                ),
                Text('Payment and Credit'),
                Spacer(),
                Text('\$00.00'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentsScreen()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.access_time_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Trip History'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TripHistoryPage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.shopify_outlined),
                SizedBox(
                  width: 8,
                ),
                Text('Rewards'),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.deepOrangeAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'NEW',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RewardsPage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.headphones),
                SizedBox(
                  width: 10,
                ),
                Text('Contact Us'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FeedBack()));
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 80.0, right: 80.0, top: 100),
            child: RoundedButton(
              text: 'Logout',
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String value;
  final String type;
  final Color fore;
  final Color back;

  const StatCard({
    super.key,
    required this.value,
    required this.type,
    required this.fore,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //color: Color(0xA395E06D),
          color: back,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: fore,
                  )),
              Text(
                type,
                style: TextStyle(
                  fontSize: 8,
                  color: fore,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
