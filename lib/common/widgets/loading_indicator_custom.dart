import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';

class LoadingIndicatorCustom extends StatelessWidget {
  const LoadingIndicatorCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.main,
      ),
    );
  }
}
