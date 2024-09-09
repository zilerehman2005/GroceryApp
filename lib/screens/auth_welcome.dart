import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/screens/log_in.dart';
import 'package:grocery_app/screens/sign_up.dart';
import 'package:grocery_app/theme/fonts.dart';
import 'package:grocery_app/theme/icons.dart';

import '../theme/colors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemStatusBarContrastEnforced: false),
      child: Scaffold(
        body: AuthWelcome(),
      ),
    );
  }
}

class AuthWelcome extends StatelessWidget {
  const AuthWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/auth_screen.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppIcons.backArrowIcon,color: AppColors.whiteBg,)
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25
              ),
              Text(
                "Welcome",
                style: AppFonts.medium
                    .copyWith(fontSize: 18, color: AppColors.whiteBg),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                color: AppColors.whiteSmokeBg,
              borderRadius: BorderRadius.circular(20)
            ),
            height: MediaQuery.of(context).size.height * 0.42,

            child: Container(
              color: AppColors.whiteSmokeBg,
              margin: const EdgeInsets.only(top:30,left:10 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Welcome",style: AppFonts.semiBold.copyWith(fontSize: 25,color: AppColors.blackTxt,fontWeight: FontWeight.bold),),
                    Text("Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy",style: AppFonts.medium.copyWith(color: AppColors.darkGreyBg,fontSize: 15),),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 60,
                      decoration: const BoxDecoration(
                          color: AppColors.whiteBg,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2,4),
                                blurRadius: 4,
                                color: Colors.grey
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Image.asset(AppIcons.googleIcon,width: 26,height: 26,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45.0),
                            child: Text("Continue with google",style: AppFonts.semiBold.copyWith(fontSize: 15,color: AppColors.blackTxt),),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(right: 20),
                      height: 60,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2,4),
                            color: Colors.grey,
                             blurRadius: 4,
                            spreadRadius: 1
                          )
                        ],
                        color: AppColors.prDarkGreen,
                        gradient: LinearGradient(colors: [
                          Color(0xFF6CC51D), Color(0xFFAEDC81)
                        ],
                            begin: Alignment.bottomRight,
                          end: Alignment.bottomLeft
                        )
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Image.asset(AppIcons.profileIcon,width: 26,height: 26,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 45.0),
                              child: Text("Create an account",style: AppFonts.semiBold.copyWith(fontSize: 15,
                                     color: AppColors.whiteBg),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.014,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text("Already have an account ? ",style: AppFonts.light.copyWith(fontSize: 15,color: AppColors.darkGreyBg),),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn(),));
                              },
                              child: Text("Login",style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.blackTxt),))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.01,)

                ],
              ),
            )
          ),
        )
      ],
    );
  }
}
