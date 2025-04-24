import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {

    // Simulated data for blog articles
    final List<Map<String, String>> articles = [
      {'title': 'Article 1', 'content': 'Contenu de l\'article 1'},
      {'title': 'Article 2', 'content': 'Contenu de l\'article 2'},
      {'title': 'Article 3', 'content': 'Contenu de l\'article 3'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Page'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(article['title']!),
              subtitle: Text(article['content']!),
            ),
          );
        },
      ),
    );
  }
}