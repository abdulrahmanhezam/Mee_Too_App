import 'package:flutter/material.dart';

import '../../screens/sign_up_screen.dart';

class ImageWithTextAndButton extends StatelessWidget {
  const ImageWithTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.4),
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Image.asset(
                  'images/second.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: Color(0xFF545458).withOpacity(0.4),
                ),
                padding: const EdgeInsets.only(
                    top: 15, left: 17, right: 23, bottom: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'We’re here to help you find the perfect time for your next meeting!',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Inter',
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 32,
                      width: 132,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: Text(
                          'Set Meetings',
                          style: TextStyle(fontSize: 15, fontFamily: 'Inter'),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(107, 191, 236, 0.68),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 4,
                          shadowColor: Color(0x40000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
