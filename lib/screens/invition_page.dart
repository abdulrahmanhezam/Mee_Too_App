import 'package:flutter/material.dart';
import 'package:me_too_app/screens/new_meeting.dart';
import 'package:me_too_app/screens/sign_in_screen.dart';

class invition extends StatelessWidget {
  const invition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Someone invite you to a Meeting!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 150,
                ),
                Center(
                  child: Image.asset('images/SignUp.png'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 300,
                    width: 600,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromRGBO(107, 191, 236, 0.68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 4,
                        shadowColor: const Color(0x40000000),
                      ),
                      onPressed: () {},
                      child: const Text("Meeting with group 1"),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 35,
                        width: 145,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(107, 191, 236, 0.68),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                            shadowColor: const Color(0x40000000),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewMeeting()),
                            );
                          },
                          child: const Text("Accept"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 35,
                        width: 145,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(235, 123, 99, 0.68),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 4,
                            shadowColor: const Color(0x40000000),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewMeeting()),
                            );
                          },
                          child: const Text("Reject"),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
