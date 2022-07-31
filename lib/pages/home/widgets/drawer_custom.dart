import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/home/widgets/menu_elemenst.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.main),
            child: SizedBox(),
          ),
          MenuElements(),
        ],
      ),
    );
  }
}
