import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/video_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const VideoWidget(),
    );
  }
}