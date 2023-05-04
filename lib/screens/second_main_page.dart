import 'package:flutter/material.dart';

import '../widgetsFolder/mainscreen/buttom_navbar.dart';

class SecondMainPage extends StatefulWidget {
  const SecondMainPage({super.key});

  @override
  State<SecondMainPage> createState() => _SecondMainPageState();
}

class _SecondMainPageState extends State<SecondMainPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: ListView(
          children: [],
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
    ;
  }
}
