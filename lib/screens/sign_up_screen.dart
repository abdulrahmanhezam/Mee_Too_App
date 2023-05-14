import 'package:flutter/material.dart';

import '../widgetsFolder/sign_up_screen/alrady_acount.dart';
import '../widgetsFolder/sign_up_screen/google_aple_icons.dart';
import '../widgetsFolder/sign_up_screen/or_divider.dart';
import '../widgetsFolder/sign_up_screen/text_fildes.dart';
import '../widgetsFolder/sign_up_screen/top_appbar_image.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          topImageAndAppbar(),
          SizedBox(
            child: textFildes(),
          ),
          OrWithDivider(),
          GoogleAndApleIcons(),
          AlreadyHaveAnAcount(),
        ],
      ),
    );
  }
}
