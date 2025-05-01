import 'package:flutter/material.dart';
import 'package:my_flutter_test/widgets/profile/profile_header.dart';
import 'package:my_flutter_test/widgets/profile/profile_bio.dart';
import 'package:my_flutter_test/widgets/profile/repositories_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Profile header with avatar and name
            ProfileHeaderWidget(),

            // Bio section
            ProfileBio(),

            // Repositories section
            RepositoriesSection(),
          ],
        ),
      ),
    );
  }
}