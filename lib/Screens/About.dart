import 'package:flutter/material.dart';
import 'package:ketho/Components/RoundedButton.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1EEEF),
      appBar: AppBar(
        backgroundColor: Color(0xffF1EEEF),
        foregroundColor: Colors.black,
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
                      Icon(Icons.search),
                      Text('  Search For Area                 '),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18.0),
                child: Column(
                  children: [
                    Text('About Us', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 15,),
                    Text('Welcome to CycleShareHub, where urban mobility meets sustainibility. Born in 2023, our platform offers seamless bicycle rentals for city dwellers who crave an ecofriendly commute. With strategically placed bike stations, cutting edge technology, and a committment to well maintained fleets, we\'re transforming the way you navigate your city. Join us in pedalling towardsa a greener future - CycleShare Hub, where every ride is an adventure in sustainibility.', style: TextStyle(fontSize: 18), textAlign: TextAlign.center, ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.circle, color: Colors.green,),
                        SizedBox(width: 25,),
                        Text('Cheap', style: TextStyle(fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.circle, color: Colors.green,),
                        SizedBox(width: 25,),
                        Text('Reliable', style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    SizedBox(height: 70.0,),
                    RoundedButton(text: 'Close', onPressed: (){Navigator.pop(context);})
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
