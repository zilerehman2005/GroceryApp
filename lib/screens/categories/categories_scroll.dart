import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/babyCares.dart';
import 'package:grocery_app/screens/categories/edibleOil.dart';
import 'package:grocery_app/screens/categories/houseHold.dart';
import 'package:grocery_app/screens/categories/vegetables.dart';

import '../../theme/colors.dart';
import '../../theme/icons.dart';
import 'beverages.dart';
import 'category_icon.dart';
import 'fruits.dart';
import 'grocery.dart';

class CategoriesScroll extends StatelessWidget {
  const CategoriesScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 15),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryIcon(imagePath: AppIcons.vegetableIcon, label: "Vegetables", color: AppColors.iconBgColor, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Vegitables(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.fruitIcon, label: "Fruits", color: AppColors.iconBgColor2, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Fruits(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.beverageIcon, label: "Beverages", color: AppColors.iconBgColor3, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Beverages(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.groceryIcon, label: "Grocery", color: AppColors.iconBgColor4, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Grocery(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.edibleOilIcon, label: "Edible oil", color: AppColors.iconBgColor5, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Edibleoil(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.householdIcon, label: "Household", color: AppColors.iconBgColor6, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Household(),));
          },),
          const SizedBox(width: 15,),
          CategoryIcon(imagePath: AppIcons.babyCareIcon, label: "Babycare", color: AppColors.iconBgColor7, voidCallback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Babycares(),));
          },),
        ],
      ),
    );
  }
}