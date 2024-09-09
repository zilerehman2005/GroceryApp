import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/screens/log_in.dart';

import '../theme/colors.dart';
import '../theme/fonts.dart';
import '../theme/icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'custom_widgets/custom_textfields.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    super.key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  signUp(String email,String password,String phone) async {
   if(email=="" || password=="" || phone==""){
      UiHelper.customAlertBox(context, "Enter required fields");
   }
   else{
     try{
    UserCredential? userCredential =await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value){
         Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(),));
       });
     }
     on FirebaseAuthException catch(ex){
       return UiHelper.customAlertBox(context, ex.toString());
     }
   }
  }
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/images/auth_screen3.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height *0.49,
              fit: BoxFit.fill,
            ),
            SafeArea(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(AppIcons.backArrowIcon,color: AppColors.whiteBg,),),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
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
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: MediaQuery.of(context).size.height/2,

                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: AppColors.whiteSmokeBg,
                    padding: EdgeInsets.only(left: 15,right: 15),
                    margin: const EdgeInsets.only(top:2 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create account",style: AppFonts.semiBold.copyWith(fontSize: 25,color: AppColors.blackTxt,fontWeight: FontWeight.bold),),
                        Text("quickly create account",style: AppFonts.medium.copyWith(color: AppColors.darkGreyBg,fontSize: 15),),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.02,
                        ),
                        UiHelper.customTextFields(context,Image.asset(AppIcons.emailIcon), "Email", false, TextInputType.emailAddress,emailController),
                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                       UiHelper.customTextFields(context, Image.asset(AppIcons.phoneIcon), "Phone", true, TextInputType.phone, phoneController),
                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                        UiHelper.customTextFields(context, Image.asset(AppIcons.lockIcon), "Password", true, TextInputType.text, passwordController),
                        SizedBox(height: MediaQuery.of(context).size.height*0.012,),

                        UiHelper.customButtons(context, (){
                          signUp(emailController.text.toString(), passwordController.text.toString(),phoneController.text.toString());
                        }, "Sign up"),

                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
                                ,
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}