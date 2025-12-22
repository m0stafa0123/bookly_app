import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: IconButton(icon: Icon(Icons.search), onPressed: () {}),
      ),
    );
  }
}
