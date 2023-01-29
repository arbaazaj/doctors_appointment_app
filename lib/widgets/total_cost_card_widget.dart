import 'package:doctors_appointment_app/widgets/coupon_widget.dart';
import 'package:flutter/material.dart';
import 'package:doctors_appointment_app/themes/colors.dart';

class TotalCostCardWidget extends StatelessWidget {
  const TotalCostCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Total cost',
                      style: TextStyle(
                        color: textColorBlue,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Session fee for 30 minutes',
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                  ],
                ),
                const Text(
                  '\$150',
                  style: TextStyle(
                    color: textColorBlue,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'To pay',
                  style: TextStyle(
                    color: textColorBlue,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$150',
                  style: TextStyle(
                    color: textColorBlue,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Divider(thickness: 1),
            const SizedBox(height: 10.0),
            CouponWidget(onTap: () {
              showAboutDialog(
                applicationName: 'Use promo code',
                context: context,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Apply'),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}