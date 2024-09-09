import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/screens/custom_widgets/notification_switch.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';

class MyNotification extends StatefulWidget {
  const MyNotification({super.key});

  @override
  State<MyNotification> createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  bool allowNotification=true ;
  bool emailNotification=false ;
  bool orderNotification=false ;
  bool generalNotification = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteSmokeBg,
      appBar: CustomAppBars(text: "Notifications"),
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
           NotificationSwitch(title: "Allow Notification", initialValue: allowNotification,onChanged: (value){
             setState(() {
               allowNotification=value;
             });
           },),
          SizedBox(height: 10,),
           NotificationSwitch(title: "Email Notification", initialValue: emailNotification,onChanged: (value){
             setState(() {
               emailNotification=value;
             });
           },),
          SizedBox(height: 10,),
           NotificationSwitch(title: "Order Notification", initialValue: orderNotification,onChanged: (value){
             setState(() {
               orderNotification=value;
             });
           },),
          SizedBox(height:10 ,),
          NotificationSwitch(title: "General Notification", initialValue: generalNotification,onChanged: (value){
             setState(() {
               generalNotification=value;
             });
           },),
        ],
      ),
    );
  }
}
