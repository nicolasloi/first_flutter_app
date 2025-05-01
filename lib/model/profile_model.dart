import 'dart:ui';

class ProfileHeader {
  final String username;
  final String email;
  final int followers;
  final int following;

  const ProfileHeader({
    required this.username,
    required this.email,
    required this.followers,
    required this.following,
  });
}

class ProfileBio {
  final String bioText;

  const ProfileBio({
    required this.bioText,
  });
}

class Repository {
  final String name;
  final String description;
  final String language;
  final Color languageColor;
  final int stars;

  const Repository({
    required this.name,
    required this.description,
    required this.language,
    required this.languageColor,
    required this.stars,
  });
}