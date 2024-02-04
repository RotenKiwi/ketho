import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  final Function(String) onChanged;
  final String text;

  const ProfileField({
    super.key,
    required this.text,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(
            Icons.chevron_right,
            color: Colors.black,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
