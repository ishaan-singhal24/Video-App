import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_app/camera_page.dart';
import 'package:video_app/otp.dart';
import 'package:video_app/phone.dart';
import 'package:video_app/videos.dart';
import 'package:video_app/video_page.dart';
import 'package:video_player/video_player.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => MyPhone(),
      'otp': (context) => MyOtp(),
      'camera_page': (context) => CameraPage(),
      'videos': (context) => MyVideo(),
    },
  ));
}
