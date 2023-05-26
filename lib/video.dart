import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Video with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final File videoUrl;

  Video({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
  });
}
