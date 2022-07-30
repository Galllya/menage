import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:manage/common/widgets/loading_indicator_custom.dart';
import 'package:video_player/video_player.dart';

class VideoContainer extends StatefulWidget {
  final String? videoUrl;
  final File? videoFile;

  const VideoContainer({
    Key? key,
    this.videoUrl,
    this.videoFile,
  }) : super(key: key);

  @override
  State<VideoContainer> createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  @override
  void initState() {
    super.initState();
    if (widget.videoFile != null) {
      videoPlayerController = VideoPlayerController.file(widget.videoFile!)
        ..initialize().then((value) {
          setState(() {});
          _initChewie();
        });
    } else {
      videoPlayerController = VideoPlayerController.network(widget.videoUrl!)
        ..initialize().then((value) {
          setState(() {});
          _initChewie();
        });
    }
  }

  void _initChewie() async {
    setState(() {
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: true,
        optionsTranslation: OptionsTranslation(
            // playbackSpeedButtonText: S.of(context).videoPlayerPlaybackSpeedText,
            // cancelButtonText: S.of(context).videoPlayerCancelButtonText,
            // subtitlesButtonText: S.of(context).videoPlayerSubtitlesText,
            ),
      );
    });
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return chewieController != null
        ? Chewie(controller: chewieController!)
        : const LoadingIndicatorCustom();
  }
}
