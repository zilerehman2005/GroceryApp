import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/icons.dart';

class Vegitables extends StatelessWidget {
  const Vegitables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Vegetables"),
      body:FeaturedProducts(products: [
        Product("assets/images/vegetables/onions.png", "\$10", "Onions", "1kg",() {},),
        Product("assets/images/vegetables/carrot.png", "\$8", "Carrot", "1kg",() {}),
        Product("assets/images/vegetables/cucumber.png", "\$5", "Cucumber", "1kg",() {}),
        Product("assets/images/vegetables/pepper.png", "\$15", "Pepper", "1kg",() {}),
        Product( "assets/images/vegetables/eggplant.png","\$8" ,"eggPlant", "1kg",() {} ),
        Product( "assets/images/vegetables/beetroot.png","\$7" ,"Beetroot", "1kg",() {} ),
        Product( "assets/images/vegetables/brocolli.png","\$9.90" ,"Brocolli", "1.5 kg",() {} ),
        Product( "assets/images/vegetables/potatoes.png","\$7.05" ,"Potatoes", "2kg",() {} ),
        Product( "assets/images/vegetables/tomatoes.png","\$2.09" ,"Tomatoes", "1kg",() {} ),
        Product( "assets/images/vegetables/ginger.png","\$3.00" ,"Ginger", "1kg",() {} ),

      ],),
    );
  }
}
