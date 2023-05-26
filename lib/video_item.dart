import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_app/videos.dart';
import 'package:video_app/video.dart';

class VideoItem extends StatelessWidget {
  File videoFile;

  VideoItem(this.videoFile);

  List<Video> _items = [];

  List<Video> get items {
    return [..._items];
  }

  void addVideo(Video video) {
    final newVideo = Video(
      id: video.id,
      title: video.title,
      description: video.description,
      videoUrl: video.videoUrl,
    );
    _items.add(newVideo);
    // notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
