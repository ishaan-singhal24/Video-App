import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_app/videos.dart';

class VideoPage extends StatefulWidget {
  final String filePath;

  const VideoPage({Key? key, required this.filePath}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController videoPlayerController;

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  Future _initVideoPlayer() async {
    videoPlayerController = VideoPlayerController.file(File(widget.filePath));
    await videoPlayerController.initialize();
    await videoPlayerController.setLooping(true);
    await videoPlayerController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
        elevation: 0,
        backgroundColor: Colors.black26,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              print('do something with the file');
              Navigator.pushNamed(
                context,
                'videos',
                arguments: File(widget.filePath),
              );
            },
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: FutureBuilder(
        future: _initVideoPlayer(),
        builder: (context, state) {
          if (state.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return VideoPlayer(videoPlayerController);
          }
        },
      ),
    );
  }
}
