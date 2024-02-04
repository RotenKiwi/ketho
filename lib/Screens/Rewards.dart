import 'package:flutter/material.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Rewards'),
        backgroundColor: Color(0xffF1EEEF),
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Image.asset('assets/images/rewards.png'),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    'Challenges',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey,
                  ),
                  Spacer(),
                  Text(
                    'Rewards',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10),
            child: Container(
              color: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Coupons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          CouponTile(
            image: 'assets/images/grab.png',
            value: '\$5 Coupon',
            name: 'Grab',
          ),
          Container(
            height: 10.0,
            width: double.infinity,
            color: Color(0xffc4c4c4),
          ),
          CouponTile(
            image: 'assets/images/foodpanda.png',
            value: '\$5 Coupon',
            name: 'FoodPanda',
          ),
          Container(
            height: 10.0,
            width: double.infinity,
            color: Color(0xffc4c4c4),
          ),
          CouponTile(
            image: 'assets/images/razor.png',
            value: '\$5 Coupon',
            name: 'Razer',
          ),
        ],
      ),
    );
  }
}

class CouponTile extends StatelessWidget {
  final String image;
  final String name;
  final String value;
  const CouponTile({
    super.key, required this.image, required this.name, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Spacer(flex: 1,),
          Image.asset(image, scale: 1.2,),
          SizedBox(width: 25,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text(value, style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          Spacer(flex: 6,),
        ],
      ),
    );
  }
}
