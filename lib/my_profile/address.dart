import 'package:flutter/material.dart';
import 'package:grocery_app/screens/custom_widgets/custom_app_bars.dart';
import 'package:grocery_app/theme/colors.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';

import '../screens/custom_widgets/custom_textfields.dart';
class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteSmokeBg,
      appBar: CustomAppBars(text: "Add Address"),
      body: Container(
        margin: EdgeInsets.only(left: 15,right: 15),
        child: ListView(
          children: [
            SizedBox(height: 30,),
           UiHelper.customTextFields(context, Image.asset(AppIcons.personIcon), "Name", false, TextInputType.name, nameController),
          SizedBox(height: 5,),
            UiHelper.customTextFields(context,Image.asset(AppIcons.emailIcon), "Email", false, TextInputType.emailAddress,emailController),
            SizedBox(height: 5,),
            UiHelper.customTextFields(context, Image.asset(AppIcons.phoneIcon), "Phone", true, TextInputType.phone, phoneController),
            SizedBox(height: 5,),
           UiHelper.customTextFields(context, Image.asset(AppIcons.locationIcon), "Address", false, TextInputType.streetAddress, addressController),
            SizedBox(height: 5,),
            UiHelper.customTextFields(context, Image.asset(AppIcons.cardIcon), "Zip code", true, TextInputType.number, zipCodeController),
            SizedBox(height: 5,),
              UiHelper.customTextFields(context,Image.asset(AppIcons.cityIcon), "City", false, TextInputType.text, cityController),
            SizedBox(height: 5,),
            UiHelper.customTextFields(context, Image.asset(AppIcons.worldIcon), "Country", false, TextInputType.text, countryController),
             SizedBox(height: 10,),
            Row(
              children: [
                Transform.scale(
                  scale: 0.6,
                  child: Switch(
                    value: true, onChanged: (bool){},
                    activeTrackColor:AppColors.prDarkGreen ,
                  ),
                ),
                Text("Save this address",style: AppFonts.medium.copyWith(fontSize: 12,color: AppColors.blackTxt),)
              ],
            ),
            SizedBox(height: 50,),
           UiHelper.customButtons(context, (){}, "Add Address")
          ],
        ),
      ),
    );
  }
}

