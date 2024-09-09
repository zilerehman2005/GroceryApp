import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteSmokeBg,
      appBar: CustomAppBars(text: "About me"),
      body: ListView(
        children: [
          Container(
               padding: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text("Personal Details",style: AppFonts.semiBold.copyWith(fontSize: 18,color: AppColors.blackTxt),),
                SizedBox(height: 15,),
                UiHelper.customTextFields(context,Image.asset(AppIcons.personIcon), "Ozge Torer", false,TextInputType.text, nameController),
                SizedBox(height: 5,),
                UiHelper.customTextFields(context, Image.asset(AppIcons.emailIcon),"ozgetorerbala@gmail.com", false, TextInputType.emailAddress, emailController),
                SizedBox(height: 5,),
                UiHelper.customTextFields(context,Image.asset(AppIcons.phoneIcon),"+1 202 555 0142", false, TextInputType.number, phoneController),
                SizedBox(height: 30,),
                Text("Change Password",style: AppFonts.semiBold.copyWith(fontSize: 18,color: AppColors.blackTxt),),
               SizedBox(height: 15,),
                UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "Current Password", true, TextInputType.text, passwordController),
                SizedBox(height: 5,),
                UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "Password",true, TextInputType.text, passwordController),
                SizedBox(height: 5,),
                UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "confirm password",true, TextInputType.text, passwordController),
               SizedBox(height:MediaQuery.of(context).size.height*0.15 ,),
                UiHelper.customButtons(context, (){
                  Navigator.pop(context);
                }, "Save settings")
              ],
            ),
          ),

        ],
      ),
    );
  }
}
