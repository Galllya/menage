import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/domain/chat_model.dart';

class MessageContainer extends StatelessWidget {
  final ChatModel chatModel;
  final bool isCurUser;
  const MessageContainer({
    Key? key,
    required this.chatModel,
    required this.isCurUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isCurUser ? const EdgeInsets.only(left: 100) : const EdgeInsets.only(right: 100),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isCurUser ? AppColors.mainLight : AppColors.blueLight,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              chatModel.message,
              style: TextStyle(
                color: isCurUser ? AppColors.white : AppColors.black,
                fontSize: 16,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "@${chatModel.user}",
                style: TextStyle(color: isCurUser ? AppColors.white : AppColors.black),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
