import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grocery_app/my_profile/my_cards.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../theme/fonts.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
       appBar: CustomAppBars(text: "My Order",image2: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20,left: 15,right: 10),
              margin: EdgeInsets.only(top: 20,right: 15,left: 15,),
              color: AppColors.whiteBg,
              height: MediaQuery.of(context).size.height/2.3,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.lightGreyBg,
                          child: Image.asset("assets/images/boxImage.png"),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order #90897",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                            Text("Placed on Octobor 19 2021",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
                            SizedBox(height: 5,),
                            Text("Items:10   Items:\$16.90",style: AppFonts.semiBold.copyWith(fontSize: 10),)
                          ],
                        ),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/icons/showDetail.png")),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 0.5,),
                    CustomTimeline(title: "Order placed", subTitle: "Oct 19 2021",isfirst: true,),
                    CustomTimeline(title: "Order confirmed", subTitle: "Oct 19 2021"),
                    CustomTimeline(title: "Order shipped", subTitle: "Oct 20 2021"),
                    CustomTimeline(title: "Out for delivery", subTitle: "pending",color: false,),
                    CustomTimeline(title: "Order delivered", subTitle: "pending",color: false,islast: true,),
            
                  ],
                ),
              ),
            ),
            CustomOrderItem(title: "Order #90897", subTitle1: "placed on October 19 2021", subTitle2:"Items:10  Items:\$16.90", imagetitle: "assets/images/boxImage.png"),
            CustomOrderItem(title: "Order #90897", subTitle1: "placed on October 19 2021", subTitle2:"Items:10  Items:\$16.90", imagetitle: "assets/images/boxImage.png",divider: true,),
            CustomOrderItem(title: "Order #90897", subTitle1: "placed on October 19 2021", subTitle2:"Items:10  Items:\$16.90", imagetitle: "assets/images/boxImage.png",divider: true,),
          ],
        ),
      ),
    );
  }
}

class CustomTimeline extends StatelessWidget {
  String title;
  String subTitle;
  bool color;
  bool isfirst;
  bool islast;
   CustomTimeline({super.key,required this.title,required this.subTitle,this.color=true, this.isfirst=false,this.islast=false});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isfirst,
      isLast: islast,
      hasIndicator: true,
      indicatorStyle: IndicatorStyle(
          color:color?AppColors.prDarkGreen:AppColors.lightGreyBor,
          width: 15
      ),
      alignment: TimelineAlign.start,
      endChild: Container(
        padding: EdgeInsets.only(right: 15),
        constraints: BoxConstraints(minHeight: 50),
        child:Row(
          children: [
            SizedBox(width: 8,),
            Text(title,style: AppFonts.semiBold.copyWith(fontSize: 12,color: color?AppColors.blackTxt:AppColors.darkGreyBg),),
            Spacer(),
            Text(subTitle,style: AppFonts.regular.copyWith(fontSize: 12,color: AppColors.darkGreyBg),)
          ],
        ),
      ),
    );
  }
}
