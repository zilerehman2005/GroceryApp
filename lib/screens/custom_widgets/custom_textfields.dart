import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/sign_up.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
import '../log_in.dart';
class UiHelper{
  static customTextFields(BuildContext context,Image prefixIcon,String text,bool toHide,TextInputType keyboardType,TextEditingController controller,{bool color=true}){
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      decoration: BoxDecoration(
          color: color?AppColors.whiteBg:AppColors.lightGreyBg,
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: toHide,
        decoration: InputDecoration(
            hintStyle: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.darkGreyBg),
            contentPadding: EdgeInsets.all(20),
            hintText: text,
            prefixIcon: prefixIcon,
            border: InputBorder.none
        ),
      ),
    );
  }
  static customButtons(BuildContext context,VoidCallback voidCallback,String text){
        return  InkWell(
          onTap: (){

            voidCallback();
          },
          child: Container(
            height:MediaQuery.of(context).size.height*0.07,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2,4),
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 1
                  )
                ],
                color: AppColors.prDarkGreen,
                gradient: LinearGradient(colors: [
                  Color(0xFF6CC51D), Color(0xFFAEDC81)
                ],
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft
                )
            ),
            child: Center(
              child: Text(text,style: AppFonts.semiBold.copyWith(fontSize: 15,
                  color: AppColors.whiteBg),textAlign: TextAlign.center,),
            ),
          ),
        );
  }
  static customAlertBox(BuildContext context, String text){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Ok",))
        ],
      );
    });
  }
   static void logOut(BuildContext context)async{
    await FirebaseAuth.instance.signOut().then((value){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn(),));
    });
   }
   static customTimeline(String title,String subTitle){
    return TimelineTile(
      isFirst: true,
      hasIndicator: true,
      indicatorStyle: IndicatorStyle(
          color: AppColors.prDarkGreen,
          width: 15
      ),
      alignment: TimelineAlign.start,
      endChild: Container(
        child:Row(
          children: [
            Text(title),
            Spacer(),
            Text(subTitle)
          ],
        ),
      ),
    );
   }
  }


