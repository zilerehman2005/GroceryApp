import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/categories.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';
class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBars(text: "Shopping Cart",),
      backgroundColor: AppColors.lightGreyBg,
      body: Container(
        padding: EdgeInsets.only(left: 15,right: 15),
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25),
        child: Column(
          children: [
              Image.asset("assets/images/bagImage.png",),
              SizedBox(height:MediaQuery.of(context).size.height*0.05 ,),
            Text("Your cart is empty!",style: AppFonts.semiBold.copyWith(fontSize: 20,color: AppColors.blackTxt),),
            SizedBox(height:MediaQuery.of(context).size.height*0.02 ,),
            Text("You will get a response within\n a few minutes.",style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.darkGreyBg),textAlign: TextAlign.center,),
            SizedBox(height: MediaQuery.of(context).size.height*0.21,),
            UiHelper.customButtons(context, (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Categories(),));
            }, "start shopping")
          ],
        ),
      ),
    );
  }
}
