import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String iconImage;
  final VoidCallback onPress;
  final String label;
  const AuthButton(
      {Key? key,
      required this.iconImage,
      required this.onPress,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(8.0),
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            iconImage,
            scale: 1.0,
          ),
          SizedBox(
            width: 16.0,
          ),
          Text(
            label,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
