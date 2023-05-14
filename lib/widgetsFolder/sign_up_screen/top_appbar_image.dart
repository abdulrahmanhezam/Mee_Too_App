import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class topImageAndAppbar extends StatelessWidget {
  const topImageAndAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFCCE8F8), Colors.white],
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.27,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromRGBO(0, 122, 255, 1),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Back',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 122, 255, 1),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset("images/SignUp.png"),
            ),
          ),
        ],
      ),
    );
  }
}
