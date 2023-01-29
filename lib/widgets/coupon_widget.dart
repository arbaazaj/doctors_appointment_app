import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class CouponWidget extends StatelessWidget {
  const CouponWidget({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 50.0,
          width: double.maxFinite,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: lightGreyColor,
                blurRadius: 0.5,
                spreadRadius: 0.5,
                blurStyle: BlurStyle.solid,
              ),
            ],
            color: couponBackground,
            borderRadius: BorderRadius.circular(32.0),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.local_offer, color: mainColor),
                Text(
                  'Use promo code',
                  style: TextStyle(
                    color: textColorBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: textColorBlue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
