import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tips_calculator/constants/constant.dart';

Widget customTextField({
  required double textFieldHeight,
  required double imageWidth,
  required String prefixImage,
  required String hintText,
  required TextEditingController controller,
  VoidCallback? onEditingComplete,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Container(
        width: double.infinity,
        height: textFieldHeight,
        decoration: BoxDecoration(
          color: Color(0xffe8f0f1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          onEditingComplete: onEditingComplete,
          keyboardType: TextInputType.numberWithOptions(),
          textAlign: TextAlign.end,
          cursorHeight: 30,
          style: textStyle.copyWith(
            fontSize: 25,
          ),
          cursorColor: Color(0xff5b777b),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            border: InputBorder.none,
            hintText: hintText,
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 10,
              ),
              child: SvgPicture.asset(
                prefixImage,
                // width: size.width * 0.04,
                width: imageWidth,
              ),
            ),
            hintStyle: textStyle.copyWith(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
