import 'package:flutter/material.dart';
import 'package:task_manezer_app/Screen/JoinPage.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';
import 'package:task_manezer_app/Widget/Button.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/colors.dart';
import 'package:task_manezer_app/Widget/padding.dart';
import 'package:task_manezer_app/Widget/textFromField.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  bool isVisible = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgrountImage(context),
          Padding(
            padding: myPadding(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Set Password",
                    style: textStyle(26, FontWeight.w800, Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Minimum length password 8 character with leter and number combination.",
                    style: textStyle(14, FontWeight.w300, Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  passwordFromFild(isVisible, passwordController, "Password"),
                  const SizedBox(
                    height: 15,
                  ),
                  passwordFromFild(
                      isVisible, confirmPasController, "Confirm Password"),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JoinScreen(),
                          ));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: textStyle(20, FontWeight.bold, mainColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
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
          )
        ],
      ),
    );
  }
}
