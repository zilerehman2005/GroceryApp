import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen/navigation_bar.dart';
import 'package:grocery_app/screens/log_in.dart';

class UserCheck extends StatefulWidget {
  const UserCheck({super.key});

  @override
  State<UserCheck> createState() => _UserCheckState();
}

class _UserCheckState extends State<UserCheck> {
  @override
  Widget build(BuildContext context) {
    return userCheck();
  }
  userCheck(){
    if(FirebaseAuth.instance.currentUser!=null){
      return NavigationMenu();
    }
    else{
      return LogIn();
    }
  }
}
