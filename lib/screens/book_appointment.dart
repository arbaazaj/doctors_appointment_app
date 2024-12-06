import 'package:doctors_appointment_app/models/doctor.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/doctors_card_widget.dart';
import 'package:doctors_appointment_app/widgets/total_cost_card_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/payment_widget.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: const Text('APPOINTMENT'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          DoctorsCard(
            bottomPadding: false,
            isButtonVisible: false,
            cardTitle: '',
            trailingText: '',
            profileImageSrc: doctor.profileImageSrc,
            doctorName: doctor.name,
            doctorProfession: doctor.profession,
            yearOfExperience: doctor.yearOfExperience,
            likeablePercentage: doctor.likeablePercentage,
            costOfService: doctor.fee,
            spaceHeightBetweenCards: 15.0,
            isCardTitleEnabled: false,
          ),
          const SizedBox(height: 15.0),
          const TotalCostCardWidget(),
          const SizedBox(height: 15.0),
          const PaymentWidget(),
        ],
      ),
    );
  }
}
