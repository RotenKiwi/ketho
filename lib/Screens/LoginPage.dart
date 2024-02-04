import 'package:flutter/material.dart';
import 'package:ketho/Screens/RegisterPage.dart';
import 'package:ketho/Screens/Homepage.dart';
import '../Data/Users.dart' as user;
import '../Components/RoundedButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff77B4B5),
        title: Text(
          'Login',
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
            Spacer(
              flex: 1,
            ),
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextFormField(
                        onChanged: (value) {
                          username = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      (errorMessage == 'User Does not Exist')
                          ? Text(
                              errorMessage,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )
                          : Container(),
                      TextFormField(
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      (errorMessage == 'Incorrect Password')
                          ? Text(
                              errorMessage,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )
                          : Container(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text('Dont have an account?')),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            RoundedButton(
                text: 'Login',
                onPressed: () {
                  user.users.contains(username)
                      ? (password ==
                              user.password[user.users.indexOf(username)])
                          ? (
                              user.index = user.users.indexOf(username),
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapSample())),
                            )
                          : errorMessage = 'Incorrect Password'
                      : errorMessage = 'User Does not Exist';
                  setState(() {});
                }),
            Spacer(
              flex: 3,
            ),
            (size.height < 5000)
                ? Row(
                    children: [
                      Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/apple_logo.png'),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/gmail_logo.png'),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img.png'),
                      ),
                      Spacer(),
                    ],
                  )
                : Container(),
            Spacer(
              flex: 2,
            ),
            Container(
              height: 35,
              width: double.infinity,
              color: Color(0xff44959F),
              child: TextButton(
                onPressed: () {
                  user.index = -1;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapSample()));
                },
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
