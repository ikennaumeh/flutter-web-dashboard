import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/styles.dart';
import 'package:flutter_web_dashboard/layout.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(text: "Welcome back to the admin panel", color: lightGrey,),

                ],
              ),
              SizedBox(height: 15,),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 15,),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      CustomText(text: "Remember Me"),
                    ],
                  ),
                  CustomText(text: "Forgot Password", color: active,)
                ],
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Get.offAllNamed(rootRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: "Login", color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              RichText(text: TextSpan(children: [
                TextSpan(text: "Do not have admin credentials?"),
                TextSpan(text: " Request credentials", style: TextStyle(color: active))
              ]))

            ],
          ),
        ),
      ),
    );
  }
}
