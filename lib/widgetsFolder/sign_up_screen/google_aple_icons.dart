import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Services/firebase_services.dart';
import '../../screens/main_page.dart';

class GoogleAndApleIcons extends StatefulWidget {
  const GoogleAndApleIcons({super.key});

  @override
  State<GoogleAndApleIcons> createState() => _GoogleAndApleIconsState();
}

class _GoogleAndApleIconsState extends State<GoogleAndApleIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 54,
          height: 55,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/aple.jpg',
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 34,
        ),
        SizedBox(
          width: 54,
          height: 55,
          child: GestureDetector(
            onTap: () async {
              await FireBaseServices().SingInWithGoogle();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainPage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/google.jpg',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
