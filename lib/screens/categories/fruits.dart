import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
class Fruits extends StatelessWidget {
  const Fruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Fruits"),
      body: FeaturedProducts(products: [
        Product("assets/images/fruits/apples.png", "\$14", "Apples", "1kg",() {}),
        Product("assets/images/fruits/avocadas.png", "\$22", "Avocadas", "1kg",() {}),
        Product("assets/images/fruits/bananas.png", "\$7", "Bananas", "1dozens",() {}),
        Product("assets/images/fruits/blueBerries.png", "\$17", "Blueberries", "1kg",() {}),
        Product( "assets/images/fruits/grapeFruit.png","\$9" ,"GrapeFruit", "1kg", () {}),
        Product( "assets/images/fruits/grapes.png","\$11.00" ,"Grapes", "1kg",() {} ),
        Product( "assets/images/fruits/mango.png","\$15.00" ,"Mangoes", "1.5 kg",() {} ),
        Product( "assets/images/fruits/peach.png","\$12.00" ,"Peach", "2kg",() {} ),
        Product( "assets/images/fruits/pineApples.png","\$22" ,"PineApples", "1kg",() {} ),
        Product( "assets/images/fruits/pomegranate.png","\$20.00" ,"Pomegranates", "1kg",() {} ),
        Product( "assets/images/fruits/strawberries.png","\$12.00" ,"Strawberries", "1kg",() {} ),
        Product( "assets/images/fruits/guava.png","\$8.00" ,"Guava", "1kg",() {} ),
      ]),
    );
  }
}
