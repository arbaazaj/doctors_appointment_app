import 'package:doctors_appointment_app/screens/doctors_screen.dart';
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
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SERVICES',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: textColorBlue),
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
            children: [
              ChipWidget(
                  icon: Icons.coronavirus, text: 'Covid-19', onTap: () {}),
              ChipWidget(
                  icon: Icons.person,
                  text: 'Doctors',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorsScreen()));
                  }),
              ChipWidget(
                icon: Icons.local_hospital,
                text: 'Hospitals',
                onTap: () {},
              ),
              ChipWidget(
                icon: Icons.science,
                text: 'Medicine',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
