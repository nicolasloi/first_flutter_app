import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/home/home_appbar.dart';
import 'package:my_flutter_test/widgets/home/video_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppbar(),
      body: const VideoWidget(),
    );
  }
}