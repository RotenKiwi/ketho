import 'package:flutter/material.dart';
import 'package:ketho/Components/RoundedButton.dart';
import 'package:ketho/Screens/Navigate.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Feedback'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xffC4EED0),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child:
                          Text('Please read our FAQ before leaving a message'),
                    ),
                    Spacer(),
                    Icon(Icons.cancel),
                    Spacer(),
                  ],
                )),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text('Message'),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextFormField(
              maxLines: 12,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: 'Maximum 250 words',
                hintStyle: TextStyle(
                  //color: textColor,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(height: 2,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Color(0xffC4EED0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child:
                  Text('Upload Image'),
                ),),
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              RoundedButton(text: 'Submit', onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Navigate()));
              },),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
