import 'package:flutter/material.dart';
import 'package:grocery_app/screens/auth_welcome.dart';
import 'package:grocery_app/screens/authentication_screens/check_user.dart';
import 'package:grocery_app/screens/custom_widgets/custom_textfields.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColors.whiteBg,
      dotsDecorator: const DotsDecorator(
          color: AppColors.darkGreyTxt, activeColor: AppColors.prDarkGreen),
      showSkipButton: true,
      pages: [
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 4,
            bodyTextStyle: AppFonts.medium
                .copyWith(color: AppColors.darkGreyTxt, fontSize: 15),
            titleTextStyle: AppFonts.bold.copyWith(
              color: AppColors.blackTxt,
              fontSize: 25,
            ),
          ),
          title: "Buy Grocery",
          body: "This is a simple grocery app developed by Zille.",
          image: Image.asset(
            "assets/images/splashScreen1.png",
            height: MediaQuery.of(context).size.height * 0.4,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 4,
            bodyTextStyle: AppFonts.medium
                .copyWith(color: AppColors.darkGreyTxt, fontSize: 15),
            titleTextStyle: AppFonts.bold.copyWith(
              color: AppColors.blackTxt,
              fontSize: 25,
            ),
          ),
          title: "Fast Delivery",
          body: "This is a simple grocery app developed by Zille.",
          image: Image.asset(
            "assets/images/splashScreen2.png",
            height: MediaQuery.of(context).size.height * 0.4,
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
              imageFlex: 4,
              bodyTextStyle:
              AppFonts.medium.copyWith(color: AppColors.darkGreyTxt,fontSize: 15),
              titleTextStyle: AppFonts.bold
                  .copyWith(color: AppColors.blackTxt, fontSize: 25)),
          title: "Enjoy Quality Food",
          body: "This is a simple grocery app developed by Zille.",
          image: Image.asset(
            "assets/images/splashScreen3.png",
            height: MediaQuery.of(context).size.height * 0.4,
          ),
        ),
      ],
      onDone: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AuthenticationPage(),
            ));
      },
      done: const Text(
        "Done",
        style: TextStyle(color: AppColors.prDarkGreen, fontSize: 18),
      ),
      next: const Text(
        "Next",
        style: TextStyle(color: AppColors.prDarkGreen, fontSize: 18),
      ),
      skip: const Text(
        "Skip",
        style: TextStyle(color: AppColors.darkGreyTxt, fontSize: 18),
      ),
      onSkip: (){
      },
    );
  }
}