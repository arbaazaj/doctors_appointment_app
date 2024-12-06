import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required TextEditingController searchBoxController,
  }) : _searchBoxController = searchBoxController;

  final TextEditingController _searchBoxController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0, left: 16.0, right: 16.0),
      child: TextField(
        controller: _searchBoxController,
        decoration: InputDecoration(
          prefixIconColor: grey,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.search_outlined,
              size: 28.0,
            ),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(
              color: grey,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(160.0)),
        ),
      ),
    );
  }
}


