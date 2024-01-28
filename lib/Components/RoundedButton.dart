import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const RoundedButton({
    Key? key, required this.text, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Color(0xffC4EED0),
      ),
      //color: Color(0xffC4EED0),
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xff49C388),
                fontSize: 25,
              ),
            )),
      ),
    );
  }
}