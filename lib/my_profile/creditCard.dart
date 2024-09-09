import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';

import '../screens/custom_widgets/custom_textfields.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController calenderController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteSmokeBg,
      appBar: CustomAppBars(text: "Add Credit Card"),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Image.asset("assets/images/card.png"),
              SizedBox(height: 20,),
              UiHelper.customTextFields(context, Image.asset(AppIcons.personIcon), "Name on the card", false, TextInputType.text, nameController),
              SizedBox(height: 5,),
               UiHelper.customTextFields(context, Image.asset(AppIcons.cardIcon), "Card number", true, TextInputType.number, cardController),
              SizedBox(height: 5,),
              Row(
                children: [
                  Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.calenderIcon), "Month/Year", false, TextInputType.text, calenderController,)),
                  SizedBox(width: 5,),
                  Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "CVV", true, TextInputType.number, cvvController,)),
                ],
              ),
             SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                      value: true, onChanged: (bool){},
                      activeTrackColor:AppColors.prDarkGreen ,
                    ),
                  ),
                  Text("Save this card",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.blackTxt),)            ],
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.19,),
              UiHelper.customButtons(context,(){}, "Add Credit Card")
            ],
          ),
        ),
      ),
    );
  }
}