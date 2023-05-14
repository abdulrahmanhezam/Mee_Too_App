import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:me_too_app/screens/main_page.dart';
import 'screens/welcome_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        '/main_page.dart': (context) => MainPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'MassegeMe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}
