import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/screens/authentication_screens/check_user.dart';
import 'package:grocery_app/theme/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: IntroScreen());
  }
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteBg,
        statusBarIconBrightness: Brightness.dark,
      ),
      // value: SystemUiOverlayStyle.dark, // < any style you want >

      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.whiteBg,
        body: UserCheck(),
      ),
    );
  }
}


