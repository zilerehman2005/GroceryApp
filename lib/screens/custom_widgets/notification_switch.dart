import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/fonts.dart';
class NotificationSwitch extends StatefulWidget {
  final String title;
  final bool initialValue;
  final ValueChanged<bool> onChanged;
   const NotificationSwitch({super.key, required this.title,  this.initialValue=true, required this.onChanged});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  late bool isAllow;
  @override
  void initState(){
    super.initState();
    isAllow = widget.initialValue;
  }
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      margin: EdgeInsets.only(left: 15,right: 15),
      color: AppColors.whiteBg,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,style: AppFonts.semiBold.copyWith(fontSize: 15),),
              SizedBox(height: 20,),
              Text("Lorem ipsum dolor sit amet,consetetur sadi\npascing elitr,sed diam nonumym",style: AppFonts.medium.copyWith(fontSize: 10,color: AppColors.darkGreyBg),),
            ],

          ),
          Spacer(),
          Transform.scale(
            scale: 0.6,
            child: Switch(
              inactiveTrackColor: AppColors.darkGreyBg,
              inactiveThumbColor: AppColors.whiteBg,
              value: isAllow, onChanged: (value){
              setState(() {
                isAllow = value;
              });
              widget.onChanged(value);
            },
              activeTrackColor:AppColors.prDarkGreen ,
            ),
          ),
        ],
      ),
    );
  }
}
