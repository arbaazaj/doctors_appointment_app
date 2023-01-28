import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  final TextEditingController controller;

  const SearchBar({
    Key? key, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: grey),
        cursorColor: grey,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.all(18.0),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(32.0)),
          prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.search, size: 28.0, color: grey)),
          hintText: 'Search',
          hintStyle:
          const TextStyle(color: grey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}