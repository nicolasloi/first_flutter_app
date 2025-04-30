import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        'Software developer passionate about Flutter and mobile development',
        style: TextStyle(color: Colors.grey[800]),
      ),
    );
  }
}