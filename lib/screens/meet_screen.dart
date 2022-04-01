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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ResuableIcon(
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            ResuableIcon(
              icon: Icons.add_box,
              text: 'Join Meeting',
            ),
            ResuableIcon(
              icon: Icons.calendar_today,
              text: 'Shedule',
            ),
            ResuableIcon(
              icon: Icons.arrow_upward_outlined,
              text: 'Share Screen',
            ),
          ],
        )
      ],
    ));
  }
}
