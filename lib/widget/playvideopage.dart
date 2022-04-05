import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool loop;

  const Video(
      {Key? key, required this.videoPlayerController, required this.loop})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VideoState();
  }
}

class _VideoState extends State<Video> {
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        looping: widget.loop,
        aspectRatio: 16 / 9,
        autoInitialize: true);
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: chewieController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    chewieController.dispose();
  }
}

class VideoPlay extends StatefulWidget {
  const VideoPlay({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VideoPlayState();
  }
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Video(
            videoPlayerController: VideoPlayerController.network(
                'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'),
            loop: true,
          ),
        ),
      ),
    );
  }
}
