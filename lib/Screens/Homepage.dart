import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ketho/Screens/About.dart';
import 'package:ketho/Screens/Feedback.dart';
import 'package:ketho/Screens/Payments.dart';
import 'package:ketho/Screens/Rewards.dart';
import 'package:ketho/Screens/TripHistory.dart';

import 'Drawer.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(1.4165892, 103.899942),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color(0xffffffff),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      Text('     Search For Area          '),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RewardsPage()));
              },
              child: Icon(
                  Icons.card_giftcard,
                  size: 35,
              ),
            ),
          ],
        ),
      ),
      drawer: HomepageDrawer(),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 380,
            child: GoogleMap(
              mapType: MapType.terrain,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Color(0xff337F48),
            child: Center(
                child: Text(
              'New Year Sale',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Color(0xffC93B79),
              ),
              //color: Color(0xffC4EED0),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 20.0),
                  child: InkWell(
                    child: Row(
                      children: [
                        Spacer(
                          flex: 3,
                        ),
                        Icon(
                          Icons.qr_code_scanner_outlined,
                          size: 35,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          'Scan QR to Ride',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 3,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentsScreen()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      Text('TopUp'),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.grey,
                ),
                Spacer(),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedBack()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.warning),
                      Text('Report an Issue'),
                    ],
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

