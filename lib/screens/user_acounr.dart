import 'package:flutter/material.dart';
import 'package:me_too_app/Services/firebase_services.dart';
import 'package:me_too_app/screens/sign_in_screen.dart';

import '../widgetsFolder/mainscreen/divider.dart';

class UserAcount extends StatefulWidget {
  const UserAcount({super.key});

  @override
  State<UserAcount> createState() => _UserAcountState();
}

class _UserAcountState extends State<UserAcount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              color: const Color.fromARGB(255, 11, 9, 9),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 8),
            const Text(
              'Back',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: const Text(
              "Profile",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Inter"),
            ),
          ),
          const MyDivider(),
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius:
                75.0, // adjust the radius value to change the size of the profile image
            backgroundImage:
                AssetImage('images/user.png'), // add your profile image here
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "Ahmed-24",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, fontFamily: "Inter"),
          )),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Email: Abd.98@hotmail.com",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const MyDivider(),
          const SizedBox(
            height: 51,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              "Password: ********",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const MyDivider(),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: const Text(
              "Availability Time",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await FireBaseServices().SignOut();
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
              );
            },
            child: const Text("Sign Out"),
          ),
        ],
      ),
    );
  }
}
