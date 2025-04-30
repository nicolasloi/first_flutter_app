import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/profile/repositories_item.dart';

class RepositoriesSection extends StatelessWidget {
  const RepositoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Repositories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

        // Repository items
        RepositoryItem(
          name: 'flutter-app',
          description: 'A simple Flutter application for demo purposes',
          language: 'Dart',
          languageColor: Colors.blue,
          stars: 12,
        ),
        RepositoryItem(
          name: 'android-project',
          description: 'Android native application with Kotlin',
          language: 'Kotlin',
          languageColor: Colors.orange,
          stars: 5,
        ),
        RepositoryItem(
          name: 'web-portfolio',
          description: 'Personal portfolio website using React',
          language: 'JavaScript',
          languageColor: Colors.yellow,
          stars: 8,
        ),
      ],
    );
  }
}