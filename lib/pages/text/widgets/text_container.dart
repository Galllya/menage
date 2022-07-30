import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/domain/base_model.dart';
import 'package:manage/pages/all_text/view/all_text_page.dart';

class TextContainer extends StatelessWidget {
  final BaseTextModel baseTextModel;
  const TextContainer({
    Key? key,
    required this.baseTextModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.main,
          ),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AllTextPage(
                            baseTextModel: baseTextModel,
                          )));
            },
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  baseTextModel.attributes!.text!,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 4,
                )),
          ),
        ),
      ),
    );
  }
}
