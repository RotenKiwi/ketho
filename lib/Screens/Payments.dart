import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        backgroundColor: Color(0xffF1EEEF),
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xff8feea9),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Credits (\$)'),
                      Row(
                        children: [
                          Text(
                            '3.00',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Withdraw',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'TopUp',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Text(
            '         Payment Method',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Image.asset(
                'assets/images/card.png',
                scale: 1.5,
              ),
            ),
          ),
          Row(
            children: [
              Spacer(
                flex: 4,
              ),
              Container(
                color: Color(0xff7acc91),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Update',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(
                flex: 1,
              )
            ],
          ),
          Spacer(),
          Tile(
            title: 'Transaction History',
            onPressed: () {},
          ),
          Tile(
            title: 'Saved Card Details',
            onPressed: () {},
          ),
          Tile(
            title: 'Monthly Transactions',
            onPressed: () {},
          ),
          Tile(
            title: 'My Coupons',
            onPressed: () {},
          ),
          Spacer()
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const Tile({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          children: [
            Spacer(
              flex: 1,
            ),
            SizedBox(
                width: 200,
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            Spacer(
              flex: 4,
            ),
            Icon(
              Icons.chevron_right,
              size: 30,
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
