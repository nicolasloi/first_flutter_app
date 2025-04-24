import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/navbar.dart';
import 'package:my_flutter_test/pages/profile_page.dart';
import 'package:my_flutter_test/pages/blog_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const Center(child: Text('Home Page')),
    const BlogPage(),
    const ProfilePage(),
  ];

  void _onItemSelected(int index) {
    _currentIndexNotifier.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ValueListenableBuilder<int>(
        valueListenable: _currentIndexNotifier,
        builder: (context, currentIndex, child) {
          return _pages[currentIndex];
        },
      ),
      bottomNavigationBar: NavBar(
        currentIndexNotifier: _currentIndexNotifier,
        onItemSelected: _onItemSelected,
      ),
    );
  }
}