import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff77B4B5),
        title: Text(
          'Register',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Color(0x4DFFFFFF), BlendMode.modulate),
            image: AssetImage('assets/images/cycle.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff505050), style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(flex: 1,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Color(0xffC4EED0),
              ),
              //color: Color(0xffC4EED0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 5.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xff49C388),
                        fontSize: 25,
                      ),
                    )),
              ),
            ),
            Spacer(flex: 2,),
            Row(
              children: [
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/apple_logo.png'),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/gmail_logo.png'),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
                Spacer(),
              ],
            ),
            Spacer(flex: 2,),
            Container(
              height: 35,
              width: double.infinity,
              color: Color(0xff44959F),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  'Continue as Guest? Click Me',
                  style: TextStyle(color: Color(0xff4569A6), fontSize: 15),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}