import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/doctors_card_widget.dart';
import 'package:doctors_appointment_app/widgets/payment_options_widget.dart';
import 'package:doctors_appointment_app/widgets/total_cost_card_widget.dart';
import 'package:flutter/material.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

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
        children: const [
          DoctorsCard(
            bottomPadding: false,
            isButtonVisible: false,
            cardTitle: '',
            trailingText: '',
            profileImageSrc:
                'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
            doctorName: 'Darrell Steward',
            doctorProfession: 'General Practitioner',
            yearOfExperience: '3 years',
            likeablePercentage: '92%',
            costOfService: 150,
            spaceHeightBetweenCards: 15.0,
            isCardTitleEnabled: false,
          ),
          SizedBox(height: 15.0),
          TotalCostCardWidget(),
          SizedBox(height: 15.0),
          PaymentWidget(),
        ],
      ),
    );
  }
}

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'PAYMENT OPTIONS',
              style: TextStyle(
                color: textColorBlue,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                const PaymentOptionsWidget(),
                const SizedBox(height: 30.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                        ),
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.all(16.0)),
                        backgroundColor:
                            const MaterialStatePropertyAll(orangeColor)),
                    onPressed: () {},
                    child: const Text('Pay & Confirm',
                        style: TextStyle(fontSize: 15.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
