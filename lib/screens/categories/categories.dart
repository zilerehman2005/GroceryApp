import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/babyCares.dart';
import 'package:grocery_app/screens/categories/beverages.dart';
import 'package:grocery_app/screens/categories/edibleOil.dart';
import 'package:grocery_app/screens/categories/fruits.dart';
import 'package:grocery_app/screens/categories/grocery.dart';
import 'package:grocery_app/screens/categories/houseHold.dart';
import 'package:grocery_app/screens/categories/vegetables.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/icons.dart';

import 'category_icon.dart';
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Categories",),
      body:   GridView.count(
        crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 15,
      childAspectRatio: 0.9,
      padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10,),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.vegetableIcon, label: "Vegetables", color: AppColors.iconBgColor, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Vegitables(),));
          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.fruitIcon, label: "Fruits", color: AppColors.iconBgColor2, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Fruits(),));

          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.beverageIcon, label: "Beverages", color: AppColors.iconBgColor3, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Beverages(),));

          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.groceryIcon, label: "Grocery", color: AppColors.iconBgColor4, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Grocery(),));

          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.edibleOilIcon, label: "Edible oil", color: AppColors.iconBgColor5, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Edibleoil(),));

          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.householdIcon, label: "Household", color: AppColors.iconBgColor6, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Household(),));
          },),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          color: AppColors.whiteBg,
          child: CategoryIcon(imagePath:AppIcons.babyCareIcon, label: "Babycare", color: AppColors.iconBgColor7, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Babycares(),));
          },),
        ),

      ],
      ),
    );
  }
}
