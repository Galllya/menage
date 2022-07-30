import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/files/view/files_page.dart';
import 'package:manage/pages/text/view/text_page.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: AppColors.main),
            child: SizedBox(),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TextPage()));
            },
            title: const Text("Текст"),
            trailing: const Icon(Icons.library_books),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FilesPage()));
            },
            title: const Text("Файлы"),
            trailing: const Icon(Icons.file_copy),
          ),
        ],
      ),
    );
  }
}
