import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const ChipWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                color: chipShadowColor,
                spreadRadius: 10.0,
                blurStyle: BlurStyle.solid,
                blurRadius: 10.0,
              ),
            ], borderRadius: BorderRadius.circular(64.0)),
            child: CircleAvatar(
              radius: 28.0,
              backgroundColor: mainColor,
              child: Icon(icon, size: 26.0, color: Colors.white),
            ),
          ),
          const SizedBox(height: 25.0),
          Text(
            text,
            style: const TextStyle(
                color: textColorBlue,
                fontSize: 13.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
