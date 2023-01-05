import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

SvgPicture backgrountImage(BuildContext context) {
  return SvgPicture.asset(
    "assets/images/background.svg",
    fit: BoxFit.cover,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.height,
  );
}
