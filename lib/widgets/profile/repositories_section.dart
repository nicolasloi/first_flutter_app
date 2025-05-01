import 'package:flutter/material.dart';
import 'package:my_flutter_test/data/profile_data.dart';
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
        ...repositories.map((repo) => RepositoryItem(
          name: repo.name,
          description: repo.description,
          language: repo.language,
          languageColor: repo.languageColor,
          stars: repo.stars,
        )),
      ],
    );
  }
}