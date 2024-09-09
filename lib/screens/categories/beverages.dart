import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Beverages"),
       body: FeaturedProducts(products: [
            Product("assets/images/beverages/mineralWater.png", "\$6", "Mineral Water", "1 ltr",() {}),
            Product("assets/images/beverages/lemonJuice.png", "\$7", "Lemon Juice", "1 glass",() {}),
            Product("assets/images/beverages/herbalTea.png", "\$12", "Herbal Tea", "1 cup",() {}),
            Product("assets/images/beverages/orangeJuice.png", "\$15", "Orange Juice", "1 glass",() {}),
            Product("assets/images/beverages/coldDrink.png", "\$15", "Soft Drinks", "1 ltr",() {}),
            Product("assets/images/beverages/coffee.png", "\$20", "Coffee", "1 cup",() {}),
       ]),
    );
  }
}
