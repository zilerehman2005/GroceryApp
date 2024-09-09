import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/my_profile/favorites.dart';
import 'package:grocery_app/my_profile/profile.dart';
import 'package:grocery_app/screens/home_screen/home_page.dart';
import 'package:grocery_app/screens/home_screen/shopping_cart.dart';
import 'package:grocery_app/theme/colors.dart';

import '../../theme/icons.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int selectedIndex = 0;
  List<Widget> screens = [

    HomePage(),
    MyProfile(),
    Favorites()
  ];
  Future<bool> _onWillPop() async {
    if (selectedIndex != 0) {
      setState(() {
        selectedIndex = 0;
      });
      return false; // Prevents popping the navigation stack
    }
    return true; // Allows the app to exit if on the home page
  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
     onWillPop: _onWillPop,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
        body: screens[selectedIndex],
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,

                currentIndex: selectedIndex,
                onTap: (int index) {
                  if (index < 3) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }

                },
                items: [
                  BottomNavigationBarItem(icon: Image.asset(AppIcons.homeIcon),label: ""),
                  BottomNavigationBarItem(icon: Image.asset(AppIcons.personIcon),label: ""),
                  BottomNavigationBarItem(icon: Center(child: Image.asset(AppIcons.heartIcon)),label: ""),
                BottomNavigationBarItem(icon: SizedBox.shrink(),label: "")
                ],
                backgroundColor: AppColors.whiteBg,
              ),
        ),
           floatingActionButton: FloatingActionButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => ShoppingCart(),));
             },
             backgroundColor: AppColors.prDarkGreen,
             shape: CircleBorder(),
             child: Image.asset(AppIcons.bagIcon),
           ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
