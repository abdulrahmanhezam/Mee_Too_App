import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../screens/sign_in_screen.dart';

class AlreadyHaveAnAcount extends StatelessWidget {
  const AlreadyHaveAnAcount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Inter"),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          },
          child: const Text("Sign in"),
        ),
      ],
    );
  }
}
