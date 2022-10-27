import 'package:flutter/material.dart';
import 'package:tips_calculator/constants/constant.dart';

ListTile customListTile({required String listTitle,required String listSubtitle,required String listTrailing}) => ListTile(
      title: Text(
        listTitle,
        style: textStyle.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        listSubtitle,
        style: textStyle.copyWith(color: Colors.grey, fontSize: 15),
      ),
      trailing: Text(
        listTrailing,
        style: textStyle.copyWith(
          color: Color(0xff35BEAD),
          fontSize: 25,
        ),
      ),
    );
