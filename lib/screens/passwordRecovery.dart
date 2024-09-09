import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';

import '../theme/icons.dart';
class PasswordRecovery extends StatefulWidget {
   PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
TextEditingController emailController =TextEditingController();
  forgotPassword(String email)async{
    if(email==""){
      return UiHelper.customAlertBox(context, "Enter an Email");
    }
    else{
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar:CustomAppBars(text: "Password Recovery",color: false,),
      body: Container(
        margin:const EdgeInsets.only(left: 15, top: 80, right: 15,),
        child: Column(
          children: [
            Text("Forgot Password",style: AppFonts.semiBold.copyWith(fontSize: 25,color: AppColors.blackTxt),),
          const SizedBox(height:10 ,),
          Text("Lorem ipsum dolor sit amet,consetetur\nsadipscing elitr, sed diam nonumy",style: AppFonts.light.copyWith(fontSize: 15,color: AppColors.darkGreyBg,),textAlign: TextAlign.center,),
         const SizedBox(height: 50,),
            UiHelper.customTextFields(context,Image.asset(AppIcons.emailIcon), "Email Address", false, TextInputType.text, emailController),
            const SizedBox(height: 15,),
            UiHelper.customButtons(context, (){
              forgotPassword(emailController.text.toString());
            }, "Send link")
          ],
        ),
      ),
    );

  }
}
