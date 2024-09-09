import 'package:flutter/material.dart';
import 'package:grocery_app/my_profile/address.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';

class MyAddress extends StatefulWidget {
  const MyAddress({super.key});

  @override
  State<MyAddress> createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
   TextEditingController nameController = TextEditingController();
   TextEditingController addressController = TextEditingController();
   TextEditingController countryController = TextEditingController();
   TextEditingController phoneController = TextEditingController();
   TextEditingController cityController = TextEditingController();
   TextEditingController zipCodeController = TextEditingController();
   bool makeDefault = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBg,
      appBar: CustomAppBars(text: "My Address",image1: true,onPlusIconPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddress(),));
      },),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 15,right: 15),
              height: MediaQuery.of(context).size.height/1.59,
              color: AppColors.whiteBg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: AppColors.prWhiteGreen,
                      child: Text("DEFAULT",style: AppFonts.medium.copyWith(fontSize: 10,color: AppColors.prDarkGreen,),textAlign: TextAlign.left,)),
                    ListTile(
                      leading: CircleAvatar(
                          backgroundColor: AppColors.lightGreyBg,
                          child: Image.asset("assets/images/locationImage.png")),
                      trailing: Image.asset("assets/images/icons/showDetail.png"),
                      title: Text("Russell Austin",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                      subtitle: Text("2811 Crescent Day. LA Port\n California, United States 775",style:AppFonts.regular.copyWith(fontSize: 10,color: AppColors.darkGreyBg),),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text("+1 202 555 0142",style: AppFonts.semiBold.copyWith(fontSize: 10),),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(top:20,left: 20,right: 20),
                    child: Column(
                      children: [
                        UiHelper.customTextFields(context, Image.asset(AppIcons.personIcon), "Name", false, TextInputType.name, nameController,color: false),
                       SizedBox(height: 5,),
                        UiHelper.customTextFields(context, Image.asset(AppIcons.locationIcon,color: AppColors.darkGreyBg,), "Address", false, TextInputType.streetAddress, addressController,color: false),
                        SizedBox(height: 5,),
                         Row(
                            children: [
                              Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.cityIcon), "City", false, TextInputType.text, cityController,color:false)),
                              SizedBox(width: 5,),
                              Flexible(child: UiHelper.customTextFields(context, Image.asset(AppIcons.cardIcon), "ZipCode", true, TextInputType.number, zipCodeController,color: false)),
                            ],
                         ),
                        SizedBox(height: 5,),
                        UiHelper.customTextFields(context, Image.asset(AppIcons.worldIcon), "Country", false, TextInputType.streetAddress, countryController,color: false),
                        SizedBox(height: 5,),
                        UiHelper.customTextFields(context, Image.asset(AppIcons.phoneIcon), "Phone number", false, TextInputType.streetAddress, phoneController,color: false),
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
              margin: EdgeInsets.only(top: 15,left: 15,right: 15),
              color: AppColors.whiteBg,
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: AppColors.lightGreyBg,
                    child: Image.asset("assets/images/locationImage.png")),
                trailing: Image.asset("assets/images/icons/showDetail.png"),
                title: Text("Jissca Simpson",style: AppFonts.semiBold.copyWith(fontSize: 15),),
                subtitle: Text("2811 Crescent Day. LA Port\n California, United States 775",style:AppFonts.regular.copyWith(fontSize: 10,color: AppColors.darkGreyBg),),
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
