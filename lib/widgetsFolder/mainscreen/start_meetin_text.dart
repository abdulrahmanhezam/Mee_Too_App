import 'package:flutter/material.dart';

class StartMeetingText extends StatelessWidget {
  const StartMeetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 41, left: 10, bottom: 17),
      child: Text(
        "Start Meeting",
        style: TextStyle(
            fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.black),
        textAlign: TextAlign.left,
      ),
    );
  }
}
