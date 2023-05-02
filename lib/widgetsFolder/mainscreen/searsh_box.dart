import 'package:flutter/material.dart';

class SearshBox extends StatelessWidget {
  const SearshBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 334,
      height: 36,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            icon: Icon(Icons.mic, color: Colors.grey),
            onPressed: () {
              // handle voice search here
            },
          ),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        ),
      ),
    );
  }
}
