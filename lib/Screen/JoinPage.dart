import 'package:flutter/material.dart';
import 'package:task_manezer_app/Widget/Backgroundimages.dart';
import 'package:task_manezer_app/Widget/Button.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/colors.dart';
import 'package:task_manezer_app/Widget/padding.dart';
import 'package:task_manezer_app/Widget/textFromField.dart';

class JoinScreen extends StatefulWidget {
  const JoinScreen({super.key});

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  final formkey = GlobalKey<FormState>();
  bool isVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController MobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgrountImage(context),
          Form(
            key: formkey,
            child: Padding(
              padding: myPadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Join With Us",
                      style: textStyle(26, FontWeight.w800, Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  emailFromField(emailController, "Email"),
                  const SizedBox(
                    height: 15,
                  ),
                  commonTextFildController(
                      "First Name", firstNameController, TextInputType.name),
                  const SizedBox(
                    height: 15,
                  ),
                  commonTextFildController(
                      "Last Name", lastNameController, TextInputType.name),
                  const SizedBox(
                    height: 15,
                  ),
                  commonTextFildController(
                      "Mobile", MobileController, TextInputType.number),
                  const SizedBox(
                    height: 15,
                  ),
                  passwordFromFild(isVisible, passwordController, "Password"),
                  const SizedBox(
                    height: 50,
                  ),
                  button(
                      context,
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                      ), () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                    }
                  })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
