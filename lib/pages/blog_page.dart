import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  final List<Map<String, String>> _articles = [
    {'title': 'Article 1', 'content': 'Contenu de l\'article 1'},
    {'title': 'Article 2', 'content': 'Contenu de l\'article 2'},
    {'title': 'Article 3', 'content': 'Contenu de l\'article 3'},
  ];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  int? _editingIndex;

  void _showArticleDialog({int? index}) {
    if (index != null) {
      _titleController.text = _articles[index]['title']!;
      _contentController.text = _articles[index]['content']!;
      _editingIndex = index;
    } else {
      _titleController.clear();
      _contentController.clear();
      _editingIndex = null;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(_editingIndex == null ? 'Add Article' : 'Edit Article'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _contentController,
                decoration: const InputDecoration(labelText: 'Content'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                _addOrUpdateArticle();
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _addOrUpdateArticle() {
    final title = _titleController.text;
    final content = _contentController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      setState(() {
        if (_editingIndex == null) {
          _articles.add({'title': title, 'content': content});
        } else {
          _articles[_editingIndex!] = {'title': title, 'content': content};
          _editingIndex = null;
        }
      });
    }
  }

  void _deleteArticle(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Deletion'),
          content: const Text('Are you sure you want to delete this article?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _articles.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showArticleDialog(),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          final article = _articles[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(article['title']!),
              subtitle: Text(article['content']!),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () => _showArticleDialog(index: index),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteArticle(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}