import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';

ThemeData applicationTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.white),
      color: AppColors.main,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      )),
);
