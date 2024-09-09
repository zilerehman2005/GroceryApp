import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';

class Grocery extends StatelessWidget {
  const Grocery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBars(text: "Grocery"),
      body: FeaturedProducts(products: [
          Product("assets/images/grocery/bread.png", "\$10", "Bread", "1 small",() {}),
          Product("assets/images/grocery/egg.png", "\$15", "Egg", "1 dozens",() {}),
          Product("assets/images/grocery/meat.png", "\$30", "Meat", "1 kg",() {}),
          Product("assets/images/grocery/milk.png", "\$11", "Milk", "1 ltr",() {}),
          Product("assets/images/grocery/snacks.png", "\$3", "Snacks", "1 packet",() {}),
          Product("assets/images/grocery/soap.png", "\$7", "Soap", "1 pack",() {}),
      ]),
    );
  }
}
