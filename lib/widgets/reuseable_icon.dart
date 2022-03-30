import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class ResuableIcon extends StatelessWidget {
  const ResuableIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(19)),
      height: 60,
      width: 60,
      child: Icon(
        icon,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
