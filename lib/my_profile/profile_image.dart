import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/theme/colors.dart';

import '../theme/fonts.dart';
import '../theme/icons.dart';
class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
    value: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ),
      child: Scaffold(
        backgroundColor: AppColors.blackTxt,

       body:Column(
         children: [
           SafeArea(
             child: Row(
               children: [
                 IconButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },
                   icon: Image.asset(AppIcons.backArrowIcon,color: AppColors.whiteBg,),),
                 SizedBox(
                   width: MediaQuery.of(context).size.width * 0.25,
                 ),
                 Text(
                   "Ozge Torer",
                   style: AppFonts.medium
                       .copyWith(fontSize: 18, color: AppColors.whiteBg),
                 )
               ],
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.15,),
           Image.asset("assets/images/profileImage.png",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2,fit: BoxFit.cover,),
         ],
       ) ,
      ),
    );
  }
}
