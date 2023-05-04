import 'package:flutter/material.dart';

import '../widgetsFolder/mainscreen/buttom_navbar.dart';
import '../widgetsFolder/mainscreen/divider.dart';
import '../widgetsFolder/mainscreen/image_with_text.dart';
import '../widgetsFolder/mainscreen/searsh_box.dart';
import '../widgetsFolder/mainscreen/start_meetin_text.dart';
import '../widgetsFolder/mainscreen/top_row.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.07),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              child: TopRow(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const MyDivider(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              child: const SearchBox(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const StartMeetingText(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1,
              child: const ImageWithTextAndButton(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtomNavBar(),
    );
  }
}
