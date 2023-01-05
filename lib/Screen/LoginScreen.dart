import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manezer_app/Screen/ForgetPasswordPage.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';
import 'package:task_manezer_app/Widget/Button.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/colors.dart';
import 'package:task_manezer_app/Widget/padding.dart';
import 'package:task_manezer_app/Widget/textFromField.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgrountImage(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Get Started With",
                  style: textStyle(26, FontWeight.w800, Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding: myPadding(),
                  child: Column(
                    children: [
                      emailFromField(emailController, "Email"),
                      const SizedBox(
                        height: 15,
                      ),
                      passwordFromFild(isVisible ? true : false,
                          passwordController, "Password"),
                      const SizedBox(
                        height: 30,
                      ),
                      button(
                        context,
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: mainColor,
                        ),
                        () {
                          if (formkey.currentState!.validate()) {
                            formkey.currentState!.save();
                          }
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      button2("Forget Your Password ?", () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgetPassword(),
                            ));
                      }),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don/'t have an Account ?"),
                          const SizedBox(
                            width: 5,
                          ),
                          button2("Sing up", () {})
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
