import 'package:flutter/material.dart';
import 'package:task_manezer_app/Screen/VerificationScreen.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';
import 'package:task_manezer_app/Widget/Button.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/padding.dart';
import 'package:task_manezer_app/Widget/textFromField.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailControiller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgrountImage(context),
          Padding(
            padding: myPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Your Email Address",
                        style: textStyle(26, FontWeight.w800, Colors.black),
                      ),
                      Text(
                        "A 6-digit verification pin will send your Email address",
                        style: textStyle(14, FontWeight.w300, Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                          key: formkey,
                          child: emailFromField(emailControiller, "Email")),
                      const SizedBox(
                        height: 20,
                      ),
                      button(
                          context, const Icon(Icons.arrow_forward_ios_rounded),
                          () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerificationScreen(),
                            ));
                      }),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Have an Accound ?"),
                          const SizedBox(
                            width: 5,
                          ),
                          button2("Sign in", () {})
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
