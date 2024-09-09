import 'package:flutter/material.dart';
import 'package:grocery_app/my_profile/creditCard.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';

import '../screens/custom_widgets/custom_textfields.dart';
import '../theme/fonts.dart';
import '../theme/icons.dart';
class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  bool makeDefault = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "My Cards",image1:true,onPlusIconPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => CreditCard(),));
      },),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             margin: EdgeInsets.only(top: 20,left: 15,right: 15),
             height: MediaQuery.of(context).size.height/2.08,
             color: AppColors.whiteBg,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                     color: AppColors.prWhiteGreen,
                     child: Text("DEFAULT",style: AppFonts.medium.copyWith(fontSize: 10,color: AppColors.prDarkGreen,),textAlign: TextAlign.left,)),
                 ListTile(
                   leading: Image.asset(AppIcons.masCardIcon),
                   trailing: Image.asset("assets/images/icons/showDetail.png",),

                   title: Text("Master Card",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                   subtitle: Text("XXXX XXXX XXXX 5678",style:AppFonts.medium.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 90.0),
                   child: Text("Expiry:01/22   cvv:908",style: AppFonts.semiBold.copyWith(fontSize: 10),),
                 ),
                 Divider(thickness: 0,),
                 Container(
                   margin: EdgeInsets.only(top:20,left: 20,right: 20),
                   child: Column(
                     children: [
                       UiHelper.customTextFields(context, Image.asset(AppIcons.personIcon), "Russel Austin", false, TextInputType.name, nameController,color: false),
                       SizedBox(height: 5,),
                       UiHelper.customTextFields(context, Image.asset(AppIcons.cardIcon), "XXXX XXXX XXXX 5678", false, TextInputType.visiblePassword, cardController,color: false),
                       SizedBox(height: 5,),
                       Row(
                         children: [
                           Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.calenderIcon), "01/22", false, TextInputType.text, dateController,color:false)),
                           SizedBox(width: 5,),
                           Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.cardIcon), "908", false, TextInputType.number, cvvController,color: false)),
                         ],
                       ),
                       Row(
                         children: [
                           Transform.scale(
                             scale: 0.6,
                             child: Switch(
                               value: makeDefault, onChanged: (value){
                               setState(() {
                                 makeDefault =value;
                               });
                             },
                               activeTrackColor:AppColors.prDarkGreen ,
                             ),
                           ),
                           Text("Make default",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.blackTxt),)
                         ],
                       ),
                     ],
                   ),
                 ),

               ],
             ),
           ),
             Container(
               margin: EdgeInsets.only(left: 15,right: 15,top: 10),
              padding: EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
               color:AppColors.whiteBg ,
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 30,
                     backgroundColor: AppColors.lightGreyBg,
                     child: Text("VISA",style: TextStyle(fontSize: 20,color: AppColors.visaColor,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                   ),
                   SizedBox(width: 10,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Visa Card",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                       Text("XXXX XXXX XXXX 5678",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
                       Text("Expiry:01/22   cvv:908",style: AppFonts.semiBold.copyWith(fontSize: 10),)
                     ],
                   ),
                   Spacer(),
                   IconButton(onPressed: (){}, icon: Image.asset("assets/images/icons/showDetail.png"))
                 ],
               ),
             ),
           Container(
             margin: EdgeInsets.only(left: 15,right: 15,top: 10),
             padding: EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
             color:AppColors.whiteBg ,
             child: Row(
               children: [
                 CircleAvatar(
                   radius: 30,
                   backgroundColor: AppColors.lightGreyBg,
                   child:Image.asset("assets/images/masCardIcon.png"),
                 ),
                 SizedBox(width: 10,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Master Card",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                     Text("XXXX XXXX XXXX 5678",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
                     Text("Expiry:01/22   cvv:908",style: AppFonts.semiBold.copyWith(fontSize: 10),)
                   ],
                 ),
                 Spacer(),
                 IconButton(onPressed: (){}, icon: Image.asset("assets/images/icons/showDetail.png"))
               ],
             ),
           ),
           Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 25),
               child: UiHelper.customButtons(context, (){}, "Save settings")
           )
         ],
       ),
     ),
    );
  }
}
class CustomOrderItem extends StatelessWidget {
  String title;
  String subTitle1;
  String subTitle2;
  bool divider;
  bool color;
  String imagetitle;
   CustomOrderItem({super.key,required this.title,required this.subTitle1,required this.subTitle2,this.color=true,required this.imagetitle,this.divider=false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 15,right: 15,top: 10),
      padding: EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
      color:AppColors.whiteBg ,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: color?AppColors.prWhiteGreen:AppColors.darkGreyBg,
                child:color?Image.asset(imagetitle):Text("VISA",style: TextStyle(fontSize: 20,color: AppColors.visaColor,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: AppFonts.semiBold.copyWith(fontSize: 15),),
                  Text(subTitle1,style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
                 SizedBox(height: 10,),
                  Text(subTitle2,style: AppFonts.semiBold.copyWith(fontSize: 10),),
                ],
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Image.asset("assets/images/icons/showDetail.png"))
            ],
          ),
          if(divider)Divider(thickness: 1,),
          if(divider)Row(children: [
            Text("Order Delivered",style:AppFonts.semiBold.copyWith(fontSize: 12,color: AppColors.darkGreyBg) ,),
           Spacer(),
            Text("Aug 29 2021",style: AppFonts.regular.copyWith(fontSize: 12,color: AppColors.darkGreyBg),),
          ],)
        ],
      ),
    );
  }
}
