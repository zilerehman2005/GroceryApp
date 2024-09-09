import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';
class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "Transaction"),
      body: ListView(
        children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ListTransaction(image: Image.asset(AppIcons.masCardIcon), title: "Master Card", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$89"),
              ),
          SizedBox(height: 10,),
          ListTransaction(image: Image.asset(AppIcons.visaIcon), title: "Master Card", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$89"),
          SizedBox(height: 10,),
          ListTransaction(image: Image.asset(AppIcons.visaIcon), title: "Master Card", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$109"),
          SizedBox(height: 10,),
          ListTransaction(image: Image.asset(AppIcons.payPalIcon), title: "Paypal", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$567"),
          SizedBox(height: 10,),
          ListTransaction(image: Image.asset(AppIcons.payPalIcon), title: "Paypal", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$567"),
          SizedBox(height: 10,),
          ListTransaction(image: Image.asset(AppIcons.masCardIcon), title: "Master Card", subTitle: "Dec 12 2021 at 10:00 pm", trailing: "\$89"),
        ],
      ),
    );
  }
}
class ListTransaction extends StatelessWidget {
  final Image image;
  final String title;
  final String subTitle;
  final String trailing;
  const ListTransaction({super.key, required this.image, required this.title, required this.subTitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      color: AppColors.whiteBg,
      child: ListTile(
        splashColor: AppColors.whiteBg,
           leading: image,
        title: Text(title,style: AppFonts.semiBold.copyWith(fontSize: 15),),
        subtitle: Text(subTitle,style: AppFonts.regular.copyWith(fontSize: 10),),
        trailing: Text(trailing,style: AppFonts.semiBold.copyWith(fontSize: 15,color:AppColors.iconGreen ),),
      ),
    );
  }
}
