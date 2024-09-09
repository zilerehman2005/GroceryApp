import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';

class CategoryIcon extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color color;
   VoidCallback voidCallback;
   CategoryIcon({super.key, required this.imagePath, required this.label, required this.color, required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: voidCallback,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Image.asset(imagePath, width: 30, height: 30,),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: AppFonts.semiBold.copyWith(fontSize: 12,color: AppColors.darkGreyBg)),
      ],
    );
  }
}