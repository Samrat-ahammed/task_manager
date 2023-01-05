import 'package:flutter/material.dart';
import 'package:task_manezer_app/Widget/Style.dart';
import 'package:task_manezer_app/Widget/colors.dart';

InkWell button(BuildContext context, Icon, press) {
  return InkWell(
    onTap: press,
    child: Container(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(12)),
      child: Icon,
    ),
  );
}

InkWell button2(String text, press) {
  return InkWell(
    onTap: press,
    child: Text(
      text,
      style: textStyle(14, FontWeight.normal, Colors.blue),
    ),
  );
}
