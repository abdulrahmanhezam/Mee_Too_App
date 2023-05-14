import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textFildes extends StatefulWidget {
  const textFildes({super.key});

  @override
  State<textFildes> createState() => _textFildesState();
}

class _textFildesState extends State<textFildes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Sign up",
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
                  "Email",
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
              onPressed: () {},
              child: const Text("Sign up"),
            ),
          ),
        )
      ],
    );
  }
}
