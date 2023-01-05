import 'package:flutter/material.dart';
import 'package:task_manezer_app/Widget/colors.dart';

TextFormField emailFromField(controller, String name) {
  return TextFormField(
    controller: controller,
    validator: (String? value) {
      if (!value!.contains("@")) {
        return "Please Enter a vaild email";
      }
    },
    // onSaved: (newValue) {
    //   email = newValue!;
    // },
    decoration: InputDecoration(
        hintText: name,
        border: InputBorder.none,
        fillColor: mainColor,
        filled: true),
  );
}

StatefulBuilder passwordFromFild(bool isVisible, controller, String name) {
  return StatefulBuilder(
    builder: (context, setState) {
      return TextFormField(
        controller: controller,
        obscureText: isVisible,
        validator: (value) {
          if (value!.length < 8) {
            return 'Password must be more then 8 charactors';
          }
        },
        // onSaved: (newValue) {
        //   password = newValue!;
        // },
        decoration: InputDecoration(
          // disabledBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: buttonColor)),
          // enabledBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: buttonColor)),
          hintText: name,
          border: InputBorder.none,
          fillColor: mainColor,
          filled: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon:
                isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          ),
        ),
      );
    },
  );
}

TextField commonTextFildController(String name, controller, textInputType) {
  return TextField(
    keyboardType: textInputType,
    controller: controller,
    decoration: InputDecoration(
        hintText: name,
        border: InputBorder.none,
        fillColor: mainColor,
        filled: true),
  );
}
