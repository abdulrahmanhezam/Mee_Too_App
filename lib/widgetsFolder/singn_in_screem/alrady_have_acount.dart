import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../screens/invition_page.dart';
import '../../screens/sign_up_screen.dart';

class DontHaveAnAcountLink extends StatelessWidget {
  const DontHaveAnAcountLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "You don’t have an account?",
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Inter"),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const invition()),
            );
          },
          child: const Text("Sign up"),
        )
      ],
    );
  }
}
