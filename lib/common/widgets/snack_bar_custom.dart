import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';

class CustomScaffoldMessages {
  SnackBar show({
    required String title,
  }) {
    return SnackBar(
      content: Text(
        title,
        style: const TextStyle(color: AppColors.black, fontFamily: 'Montserrat'),
      ),
      margin: const EdgeInsets.all(20),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      backgroundColor: AppColors.white,
    );
  }
}
