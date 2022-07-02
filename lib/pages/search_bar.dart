import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 20
      ),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Search Cars',
          hintStyle: TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: Container(
            height: 52,
            child: Icon(
              Icons.search,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
