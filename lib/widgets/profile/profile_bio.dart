import 'package:flutter/material.dart';
import 'package:my_flutter_test/data/profile_data.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the first bio from the data file
    final bio = profileBios[0];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        bio.bioText,
        style: TextStyle(color: Colors.grey[800]),
      ),
    );
  }
}