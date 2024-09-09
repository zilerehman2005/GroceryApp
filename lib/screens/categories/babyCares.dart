import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';

class Babycares extends StatelessWidget {
  const Babycares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Baby Cares"),
      body: FeaturedProducts(products: [
        Product("assets/images/babyCares/babyClothes.png", "\$25", "Clothes", "1 suit",() {}),
        Product("assets/images/babyCares/cerelac.png", "\$15", "Cerelac", "1 pack",() {}),
        Product("assets/images/babyCares/feeders.png", "\$20", "Feeders", "1 set",() {}),
        Product("assets/images/babyCares/milk.png", "\$50", "Milk", "1 pack",() {}),
        Product("assets/images/babyCares/pampers.png", "\$35", "Pampers", "1 packet",() {}),
      ]),
    );
  }
}
