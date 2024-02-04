import 'package:flutter/material.dart';
import '../Data/Users.dart' as user;
import '../Components/ProfileField.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool enable1 = false;
  bool enable2 = false;
  bool enable3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid))),
                    //color: Color(0xffC4EED0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            'Profile Picture',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(
                                Icons.person_pin,
                                size: 35,
                              ),
                              Icon(
                                Icons.chevron_right,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              ProfileField(
                text: user.users[user.index],
                onChanged: (value) {
                  user.users.remove(user.index);
                  user.users.add(value);
                  user.index = user.users.indexOf(value);
                },
              ),
              ProfileField(
                text: user.password[user.index],
                onChanged: (value) {
                  user.password.remove(user.index);
                  user.password.add(value);
                },
              ),
            ],
          ),
          Spacer(),
          Container(
            width: double.infinity,
            height: 18,
            color: Color(0x695e5e5e),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Linked Acccounts',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid))),
                    //color: Color(0xffC4EED0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          Text(
                            'Apple',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Switch(
                            activeColor: Colors.greenAccent,
                            value: enable1,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                enable1 = value;
                              });
                            },
                          )
                        ],
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid))),
                    //color: Color(0xffC4EED0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          Text(
                            'Google',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Switch(
                            activeColor: Colors.greenAccent,
                            value: enable2,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                enable2 = value;
                              });
                            },
                          )
                        ],
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid))),
                    //color: Color(0xffC4EED0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        children: [
                          Text(
                            'Twitter',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Switch(
                            activeColor: Colors.greenAccent,
                            value: enable3,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                enable3 = value;
                              });
                            },
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
