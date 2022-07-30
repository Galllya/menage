import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';

class ErrorInfoCustom extends StatelessWidget {
  const ErrorInfoCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.error,
            size: 100,
            color: AppColors.main,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Произошла ошибка',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
