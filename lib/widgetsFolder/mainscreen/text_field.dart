import 'package:flutter/material.dart';

class MTextField extends StatelessWidget {
  const MTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'iMessage',
        hintStyle: TextStyle(color: Colors.grey),
        suffixIcon: IconButton(
          icon: Icon(Icons.mic),
          onPressed: () {
            // handle voice search here
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      ),
    );
  }
}
