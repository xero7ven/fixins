import 'package:flutter/material.dart';

class PantrySearchBar extends StatelessWidget {
  const PantrySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SearchBar(
        leading: Icon(Icons.search),
        hintText: 'Search your pantry',
      ),
    );
  }
}