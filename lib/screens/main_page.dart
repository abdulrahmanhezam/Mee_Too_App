import 'package:flutter/material.dart';

import '../widgetsFolder/mainscreen/buttom_navbar.dart';
import '../widgetsFolder/mainscreen/divider.dart';
import '../widgetsFolder/mainscreen/image_with_text.dart';
import '../widgetsFolder/mainscreen/searsh_box.dart';
import '../widgetsFolder/mainscreen/start_meetin_text.dart';
import '../widgetsFolder/mainscreen/top_row.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 23,
          left: 23,
          bottom: 23,
        ),
        child: ListView(
          children: const [
            TopRow(),
            MyDivider(),
            SearshBox(),
            StartMeetingText(),
            ImageWithTextAndButton(),
          ],
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
