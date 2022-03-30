import 'package:flutter/material.dart';
import 'package:zoom_clone/widgets/reuseable_icon.dart';

class MeetScreen extends StatelessWidget {
  const MeetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          children: const [
            ResuableIcon(icon: Icons.video_call),
          ],
        )
      ],
    ));
  }
}
