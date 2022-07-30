import 'package:flutter/material.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/pages/file_detail/view/file_detail_page.dart';

class FileContainer extends StatelessWidget {
  final String code;
  final String url;
  const FileContainer({
    Key? key,
    required this.code,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = '';
    switch (code) {
      case "image":
        title = "изображение";
        break;
      case "video":
        title = "видео";
        break;
      case "gif":
        title = "гифка";
        break;
      case "music":
        title = "музыка";
        break;
      default:
    }
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FileDetailPage(
                      title: title,
                      code: code,
                      url: url,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.main), borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              code == "image" || code == "gif"
                  ? Image(image: NetworkImage("http://10.0.2.2:1337$url"))
                  : code == "video"
                      ? const Icon(
                          Icons.video_camera_front,
                          size: 40,
                          color: AppColors.main,
                        )
                      : code == "music"
                          ? const Icon(
                              Icons.music_note,
                              size: 40,
                              color: AppColors.main,
                            )
                          : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
