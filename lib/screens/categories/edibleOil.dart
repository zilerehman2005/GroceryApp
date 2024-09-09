import 'package:flutter/material.dart';
import 'package:grocery_app/screens/categories/featured_products.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
class Edibleoil extends StatelessWidget {
  const Edibleoil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBars(text: "Edible Oil"),
      body: FeaturedProducts(products: [
        Product("assets/images/edibleOil/animalFat.png", "\$125", "AnimalFatOil", "5 ltr",() {}),
        Product("assets/images/edibleOil/daldaOil.png", "\$65", "Dalda Oil", "5 ltr",() {}),
        Product("assets/images/edibleOil/nutsOil.png", "\$90", "Nuts & Seeds Oil", "5 ltr",() {}),
        Product("assets/images/edibleOil/specialtyOil.png", "\$115", "Specialty Oil", "5 ltr",() {}),
        Product("assets/images/edibleOil/tropicalOils.png", "\$80", "Tropical Oil", "5 ltr",() {}),
        Product("assets/images/edibleOil/vegetableOil.png", "\$55", "Vegetable Oil", "5 ltr",() {}),
        ]),
    );
  }
}
