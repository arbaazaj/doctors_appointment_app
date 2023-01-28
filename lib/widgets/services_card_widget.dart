import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/chip_widget.dart';
import 'package:flutter/material.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180.0,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'SERVICES',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: textColorBlue
                  ),
                ),
                Text(
                  'SEE ALL',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      color: orangeColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ChipWidget(icon: Icons.coronavirus, text: 'Covid-19'),
              ChipWidget(icon: Icons.person, text: 'Doctors'),
              ChipWidget(icon: Icons.local_hospital, text: 'Hospitals'),
              ChipWidget(icon: Icons.science, text: 'Medicine'),
            ],
          ),
        ],
      ),
    );
  }
}
