import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:manage/common/ui/colors.dart';
import 'package:manage/main.dart';

class AudioContainer extends StatefulWidget {
  final String? url;
  final File? audioFile;

  const AudioContainer({
    Key? key,
    this.url,
    this.audioFile,
  }) : super(key: key);

  @override
  State<AudioContainer> createState() => _AudioContainerState();
}

class _AudioContainerState extends State<AudioContainer> {
  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    setURL();
  }

  bool isPlayeng = false;

  void setURL() async {
    if (widget.url == null) {
      await audioPlayer.setFilePath(widget.audioFile!.path);
    } else {
      await audioPlayer.setUrl('$apiFile${widget.url}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        backgroundColor: AppColors.main,
        child: IconButton(
            onPressed: () async {
              setState(() {
                isPlayeng = !isPlayeng;
              });
              if (!isPlayeng) {
                audioPlayer.pause();
              } else {
                await audioPlayer.play();
              }
            },
            icon: Icon(
              isPlayeng ? Icons.stop : Icons.play_arrow,
              color: AppColors.white,
            )),
      ),
    );
  }
}
