import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
class Household extends StatelessWidget {
  const Household({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Household"),
      body: FeaturedProducts(products: [
        Product("assets/images/houseHold/bedAndLinen.png", "\$1200", "Bed and Linen", "1 set",() {}),
        Product("assets/images/houseHold/electronics.png", "\$2500", "Electronics", "1 piece",() {}),
        Product("assets/images/houseHold/homeTools.png", "\$200", "Repairing Tools", "1 item",() {}),
        Product("assets/images/houseHold/kitchen.png", "\$1200", "Kitchen Items", "1 set",() {}),
        Product("assets/images/houseHold/personalCare.png", "\$1200", "Personal Care", "1 set",() {}),
        Product("assets/images/houseHold/vaccumCleaner.png", "\$1300", "Vaccum", "1 piece",() {}),
      ]),
    );
  }
}
