import 'package:flutter/material.dart';
import 'package:grocery_app/my_profile/address.dart';
import 'package:grocery_app/theme/icons.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
class CustomAppBars extends StatelessWidget implements PreferredSizeWidget {
  String text;
  bool image1 ;
  bool image2;
  bool color;
   final Function()? onPlusIconPressed;
  final Function()? onBackPressed;
   CustomAppBars({required this.text, this.color = true,this.image1=false,this.image2=false ,this.onPlusIconPressed, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: color?AppColors.whiteBg:AppColors.lightGreyBg,
      centerTitle: true,
        leading: IconButton(onPressed:onBackPressed??
            (){
      Navigator.pop(context);
    }, icon:Image.asset(AppIcons.backArrowIcon)),
      title: Text(text,style: AppFonts.medium.copyWith(fontSize: 18,color: AppColors.blackTxt),
      ),
      actions: [
        if(image1)IconButton(onPressed: onPlusIconPressed??(){},
        icon: Container(
          width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 2)
            ),
            child: Image.asset(AppIcons.plusIcon)),
        ),
        if(image2)IconButton(onPressed:onPlusIconPressed??(){}, icon: Image.asset(AppIcons.sortIcon,color: AppColors.blackTxt,))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
