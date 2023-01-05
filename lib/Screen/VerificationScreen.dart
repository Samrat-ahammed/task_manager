import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_manezer_app/Screen/SetPasswordScreen.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';
import 'package:task_manezer_app/Widget/Button.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/colors.dart';
import 'package:task_manezer_app/Widget/padding.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController firstController = TextEditingController();
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
                        "PIN Verification",
                        style: textStyle(26, FontWeight.w800, Colors.black),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "A 6-digit verification pin will send your Email address",
                        style: textStyle(14, FontWeight.w300, Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          pinTextFromField(firstController),
                          const SizedBox(
                            width: 5,
                          ),
                          pinTextFromField(firstController),
                          const SizedBox(
                            width: 5,
                          ),
                          pinTextFromField(firstController),
                          const SizedBox(
                            width: 5,
                          ),
                          pinTextFromField(firstController),
                          const SizedBox(
                            width: 5,
                          ),
                          pinTextFromField(firstController),
                          const SizedBox(
                            width: 5,
                          ),
                          pinTextFromField(firstController),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      button(
                          context,
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                          ), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SetPasswordScreen(),
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an Account ?"),
                          button2("Sign in", () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox pinTextFromField(controller) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none, fillColor: mainColor, filled: true),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
