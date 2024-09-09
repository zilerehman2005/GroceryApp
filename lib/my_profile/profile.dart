import 'package:flutter/material.dart';
import 'package:grocery_app/my_profile/about_me.dart';
import 'package:grocery_app/my_profile/address.dart';
import 'package:grocery_app/my_profile/creditCard.dart';
import 'package:grocery_app/my_profile/favorites.dart';
import 'package:grocery_app/my_profile/my_cards.dart';
import 'package:grocery_app/my_profile/profile_image.dart';
import 'package:grocery_app/my_profile/transaction.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:grocery_app/theme/fonts.dart';
import '../theme/colors.dart';
import '../theme/icons.dart';
import 'my_address.dart';
import 'my_notification.dart';
import 'my_orders.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBg,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              color: AppColors.lightGreyBg,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Text(
                    "Ozge Torer",
                    style: AppFonts.semiBold.copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.002,
                  ),
                  Text(
                    "balahatun@gmail.com",
                    style: AppFonts.regular
                        .copyWith(fontSize: 12, color: AppColors.darkGreyBg),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.personIcon, title: "About me"),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.boxIcon, title: "My Orders "),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Favorites(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.heartIcon, title: "My Favorites"),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddress(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.locationIcon, title: "My Address"),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyCards()));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.creditIcon, title: "Credit Cards"),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Transaction(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.transactionIcon,
                            title: "Transactions"),
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyNotification(),));
                        },
                        icon: ListProfileItem(
                            image: AppIcons.notificationIcon,
                            title: "Notifications"),
                      ),
                      IconButton(
                        onPressed: (){
                          UiHelper.logOut(context);
                        },
                        icon: ListProfileItem(
                          image: AppIcons.signOutIcon,
                          title: "Sign out",
                          showIcon: false,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.10,
            left: MediaQuery.of(context).size.width * 0.34,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileImage(),));
              },
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/profileImage.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListProfileItem extends StatelessWidget {
  final String image;
  final String title;
  final bool showIcon;
  const ListProfileItem(
      {super.key,
      required this.image,
      required this.title,
      this.showIcon = true,});

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: const EdgeInsets.only(right: 15, left: 15),
          child: Row(
            children: [
              Image.asset(
                image,
                color: AppColors.iconGreen,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.03,
              ),
              Text(title, style: AppFonts.semiBold.copyWith(fontSize: 12)),
              const Spacer(),
              if (showIcon) const Icon(Icons.arrow_forward_ios),
            ],
          ),
        );
  }
}
