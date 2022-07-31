import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/files/view/files_page.dart';
import 'package:manage/pages/text/view/text_page.dart';

class MenuElements extends StatelessWidget {
  const MenuElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TextPage()));
          },
          title: const Text(
            "Текст",
            style: TextStyle(color: kIsWeb ? AppColors.white : AppColors.black),
          ),
          trailing:
              const Icon(Icons.library_books, color: kIsWeb ? AppColors.white : AppColors.black),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FilesPage()));
          },
          title: const Text(
            "Файлы",
            style: TextStyle(color: kIsWeb ? AppColors.white : AppColors.black),
          ),
          trailing: const Icon(Icons.file_copy, color: kIsWeb ? AppColors.white : AppColors.black),
        ),
      ],
    );
  }
}
