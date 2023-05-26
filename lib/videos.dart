import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_app/video_page.dart';
import 'package:video_app/video_item.dart';

class MyVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeData = ModalRoute.of(context)?.settings.arguments as File;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => VideoItem(routeData),
    );
  }
}
