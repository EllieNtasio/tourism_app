import 'package:flutter/material.dart';

/// Placeholder start screen. Replaced by the app shell with bottom
/// navigation (Map, Favourites, Settings) in week 2.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tourism App')),
      body: const Center(child: Text('Explore places nearby — coming soon.')),
    );
  }
}
