import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../screens/user_acounr.dart';

class SignInTextFildes extends StatefulWidget {
  const SignInTextFildes({super.key});

  @override
  State<SignInTextFildes> createState() => _SignInTextFildesState();
}

class _SignInTextFildesState extends State<SignInTextFildes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Sign in",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Inter",
                fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "User Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 37,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Pasword",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(
                  height: 37,
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: 35,
            width: 145,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(107, 191, 236, 0.68),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 4,
                shadowColor: const Color(0x40000000),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserAcount()),
                );
              },
              child: const Text("Sign in"),
            ),
          ),
        )
      ],
    );
  }
}
