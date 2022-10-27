import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget tipsItem(
        {required String tipsText,
        required BuildContext context,
        required Color color,
        Color? textColor,VoidCallback? onPress}) =>
    ElevatedButton(
      onPressed: onPress,
      child: Text(
        tipsText,
        style: GoogleFonts.inconsolata(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: textColor ?? Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 0,
        onPrimary: Colors.white,
        minimumSize: Size(
          double.infinity,
          MediaQuery.of(context).size.height * 0.08,
        ),
      ),
    );
