import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class ResuableIcon extends StatelessWidget {
  const ResuableIcon({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(19),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(.6),
                ),
              ]),
          height: 60,
          width: 60,
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        
        ),
        SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyle(
          color: Colors.grey, 
        ),)
      ],
    );
  }
}
