import 'package:flutter/material.dart';
import 'package:ketho/Components/RoundedButton.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

bool message = true;

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    double space = 20;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Submit Feedback'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            message
                ? SizedBox(
                    height: 5,
                  )
                : Container(),
            message
                ? Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Color(0xffC4EED0),
                        child: Row(
                          children: [
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Text(
                                  'Please read our FAQ before leaving a message'),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  message = false;
                                });
                              },
                              child: Icon(Icons.cancel),
                            ),
                            Spacer(),
                          ],
                        )),
                  )
                : Container(),
            message
                ? SizedBox(
                    height: space,
                  )
                : SizedBox(
                    height: 20,
                  ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Message'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextFormField(
                maxLines: 10,
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
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Color(0xffC4EED0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Text('Upload Image'),
                ),
              ),
            ),
            SizedBox(
              height: space,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        Uri phoneno = Uri.parse('tel:+12345678');
                        if (await launchUrl(phoneno)) {
                          //dialer opened
                        } else {
                          //dailer is not opened
                        }
                      },
                      child: Text(
                        'Contact : 12345678',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Email : hi@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: space,
            ),
            Row(
              children: [
                Spacer(),
                RoundedButton(
                  text: 'Submit',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
              ],
            ),
            SizedBox(
              height: space,
            )
          ],
        ),
      ),
    );
  }
}
