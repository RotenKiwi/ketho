import 'package:flutter/material.dart';

class TripHistoryPage extends StatelessWidget {
  const TripHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip History'),
        backgroundColor: Color(0xffF1EEEF),
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Spacer(),
                StatCard(
                  data: '272.3KM',
                  title: 'Distance',
                ),
                Spacer(),
                StatCard(data: '5,132Kcal', title: 'Calories'),
                Spacer(),
                StatCard(data: '\$17.00', title: 'Spent'),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 20.0,
              width: double.infinity,
              color: Color(0xffc4c4c4),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 14,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black)
                    )
                  ),
                  child: ListTile(
                    leading: Text('30/12/23, 3:20:45am', style: TextStyle(fontSize: 12),),
                    title: Text('Time: 14min17s', style: TextStyle(fontSize: 15),),
                    trailing: Icon(Icons.chevron_right),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String data;
  final String title;

  const StatCard({
    super.key,
    required this.data,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Column(
        children: [
          Text(
            data,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
