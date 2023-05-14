import 'package:flutter/material.dart';
import 'package:me_too_app/screens/sign_up_screen.dart';
import 'package:me_too_app/screens/user_acounr.dart';

import '../widgetsFolder/sign_up_screen/google_aple_icons.dart';
import '../widgetsFolder/sign_up_screen/or_divider.dart';
import '../widgetsFolder/sign_up_screen/top_appbar_image.dart';
import '../widgetsFolder/singn_in_screem/alrady_have_acount.dart';
import '../widgetsFolder/singn_in_screem/text_fileds_sign_in.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          topImageAndAppbar(), // the widgit is stored from signUp screen folder.
          SignInTextFildes(),
          OrWithDivider(),
          GoogleAndApleIcons(), //stored from signup folder.

          DontHaveAnAcountLink(),
        ],
      ),
    );
  }
}
