import 'package:flutter/material.dart';
import 'package:my_flutter_test/model/profile_model.dart';

List<ProfileHeader> profileHeader = [
  const ProfileHeader(
    username: "John Doe",
    email: "john.doe@exemple.com",
    followers: 57,
    following: 32,
  ),
];

List<ProfileBio> profileBios = [
  const ProfileBio(
    bioText: 'Software developer passionate about Flutter and mobile development',
  ),
];

// Add this below your existing data
List<Repository> repositories = [
  const Repository(
    name: 'flutter-app',
    description: 'A simple Flutter application for demo purposes',
    language: 'Dart',
    languageColor: Colors.blue,
    stars: 12,
  ),
  const Repository(
    name: 'android-project',
    description: 'Android native application with Kotlin',
    language: 'Kotlin',
    languageColor: Colors.orange,
    stars: 5,
  ),
  const Repository(
    name: 'web-portfolio',
    description: 'Personal portfolio website using React',
    language: 'JavaScript',
    languageColor: Colors.yellow,
    stars: 8,
  ),
];