import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Explore",
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        CircleAvatar(
          radius:
              24.0, // adjust the radius value to change the size of the profile image
          backgroundImage:
              AssetImage('images/user.png'), // add your profile image here
        ),
      ],
    );
  }
}
