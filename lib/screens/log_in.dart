import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/my_profile/address.dart';
import 'package:grocery_app/screens/home_screen/navigation_bar.dart';
import 'package:grocery_app/screens/sign_up.dart';
import 'package:grocery_app/theme/icons.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';
import 'custom_widgets/custom_textfields.dart';
import 'passwordRecovery.dart';
import 'home_screen/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({
    super.key,
  });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   bool _rememberMe = false;
  login(String email,String password)async{
    if(email==""||password==""){
      return UiHelper.customAlertBox(context, "Enter required fields");
    }
    else{
      UserCredential? userCredential;
      try{
        userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationMenu(),));
        });

      }
      on FirebaseAuthException catch(ex){
        return UiHelper.customAlertBox(context, ex.code.toString());
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child: Stack(
      children: [
        Image.asset(
          "assets/images/auth_screen2.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *0.5,
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppIcons.backArrowIcon,color: AppColors.whiteBg,)),
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
              decoration: BoxDecoration(
                  color: AppColors.whiteBg,
              ),
              height: MediaQuery.of(context).size.height/2.05,

              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: AppColors.whiteSmokeBg,
                padding: EdgeInsets.only(left: 15,right: 15),
                margin: const EdgeInsets.only(top:10 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                    Text("Welcome back !",style: AppFonts.semiBold.copyWith(fontSize: 25,color: AppColors.blackTxt,fontWeight: FontWeight.bold),),
                    Text("Sign in to your account",style: AppFonts.medium.copyWith(color: AppColors.darkGreyBg,fontSize: 15),),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.020,
                    ),
                           UiHelper.customTextFields(context,Image.asset(AppIcons.emailIcon), "Email", false, TextInputType.text,emailController),
                           SizedBox(height: MediaQuery.of(context).size.height *0.006,),
                         UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "Password", true, TextInputType.text, passwordController),
                          SizedBox(height: MediaQuery.of(context).size.height *0.001,),


                       Row(
                        children: [
                          Transform.scale(
                            scale: 0.5,
                            child: Switch(
                            inactiveThumbColor: AppColors.whiteBg,
                              value: _rememberMe, onChanged: (value){
                              setState(() {
                                _rememberMe = value;
                              });
                            },
                            ),
                          ),

                          Text("Remember me",style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.darkGreyBg),),
                          Spacer(),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordRecovery(),));
                          }, child: Text("Forgot password",style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.blueLink),))
                        ],
                      ),

                    SizedBox(height: MediaQuery.of(context).size.height*0.00001,),
                    UiHelper.customButtons(context,(){
                      login(emailController.text.toString(), passwordController.text.toString());
                    }, "Log in"),
                    SizedBox(height:MediaQuery.of(context).size.height*0.02,),
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text("Don't have an account ? ",style: AppFonts.light.copyWith(fontSize: 15,color: AppColors.darkGreyBg),),
                          InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                              },
                              child: Text("Sign up",style: AppFonts.medium.copyWith(fontSize: 15,color: AppColors.blackTxt),))
                         ,
                        ],
                      ),
                    ),

                  ],
                ),
              )
          ),
        )
      ],
            ),
    );
  }
}