import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/navbar.dart';
import 'package:my_flutter_test/pages/home_page.dart';
import 'package:my_flutter_test/pages/profile_page.dart';
import 'package:my_flutter_test/pages/blog_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          inversePrimary: Colors.white,
        ),
        brightness: Brightness.light,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier<int>(0);

  final List<Widget> _pages = [
    const HomePage(),
    const BlogPage(),
    const ProfilePage(),
  ];

  void _onItemSelected(int index) {
    _currentIndexNotifier.value = index;
  }

  @override
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _currentIndexNotifier,
      builder: (context, currentIndex, child) {
        return Scaffold(
          appBar: currentIndex == 0
              ? null  // No AppBar for HomePage
              : AppBar(
            backgroundColor: Colors.blue[800],
            title: const Text(
              'My App',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: _pages[currentIndex],
          bottomNavigationBar: NavBar(
            currentIndexNotifier: _currentIndexNotifier,
            onItemSelected: _onItemSelected,
          ),
        );
      },
    );
  }
}