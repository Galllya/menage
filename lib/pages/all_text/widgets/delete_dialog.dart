import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';

class DeleteDialog extends StatelessWidget {
  final Function onDelete;
  const DeleteDialog({
    Key? key,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Удалить?"),
      titleTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
      actionsOverflowButtonSpacing: 20,
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColors.main,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("НЕТ")),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: AppColors.main,
          ),
          onPressed: () {
            Navigator.pop(context);
            onDelete();
          },
          child: const Text("ДА"),
        ),
      ],
      content: const Text("Восстановить текст не получится"),
    );
  }
}
