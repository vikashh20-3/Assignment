import 'package:flutter/material.dart';

CommonColors colors = CommonColors();

class CommonColors {
  Color white = Colors.white;
  Color black = Colors.black;

  // appbar background
  Color appbarPurple = const Color(0xff53389E);

  //gradient container colors
  List<Color> gradientContainer = [
    const Color(0xffE5D3FF),
    const Color(0xffFFFFFF),
    const Color(0xffFFF8E4),
    const Color(0xffFFFEFA)
  ];
  List<Color> gradientContainerTwo = [
    const Color(0xffF2E6FF),
    const Color(0xffFFFBEB),
  ];
  List<Color> gradientContainerThree = [
    const Color(0xff53389E),
    const Color(0xff7F56D9),
  ];

  // container color

  Color normalContainer = const Color(0xffF9F5FF);

  //container border
  Color containerBorder = const Color(0xffD9C8FF);

  // goal container bg color
  Color goalContainerColor = const Color(0xffF2EFFF);
  // college desc container
  Color clgDescContainer = const Color(0xfffFFF5F1);
// exams container
  Color examContainer = const Color(0xffD9C8FF);

  //text color
  Color greyText = const Color(0xff667085);
  Color lightGreyText = const Color(0xff98A2B3);
  Color yellowText = const Color(0xffF79009);
  // clg desc text
  Color descGrayText = const Color(0xff6B6B6B);

  // bottom container color
  Color bottomContainerColor = const Color(0xff1D2939);
}

// background: linear-gradient(245deg, #E5D3FF 5.95%, #FFFFFF 37.83%, #FFF8E4 64.42%, #FFFEFA 89.16%);
