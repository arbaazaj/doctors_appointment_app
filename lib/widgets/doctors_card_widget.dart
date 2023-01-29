import 'package:doctors_appointment_app/screens/book_appointment.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class DoctorsCard extends StatelessWidget {
  const DoctorsCard(
      {super.key,
      required this.cardTitle,
      required this.trailingText,
      required this.profileImageSrc,
      required this.doctorName,
      required this.doctorProfession,
      required this.yearOfExperience,
      required this.likeablePercentage,
      required this.costOfService,
      required this.spaceHeightBetweenCards,
      required this.isCardTitleEnabled, required this.isButtonVisible, required this.bottomPadding});

  final String cardTitle;
  final String trailingText;
  final String profileImageSrc;
  final String doctorName;
  final String doctorProfession;
  final String yearOfExperience;
  final String likeablePercentage;
  final int costOfService;
  final double spaceHeightBetweenCards;
  final bool isCardTitleEnabled;
  final bool isButtonVisible;
  final bool bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: spaceHeightBetweenCards),
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cardTitle,
                      style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: textColorBlue),
                    ),
                    Text(
                      trailingText,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: orangeColor),
                    ),
                  ],
                ),
                isCardTitleEnabled
                    ? const SizedBox(height: 30.0)
                    : const SizedBox(height: 0.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(64.0),
                      child: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 40.0,
                        child: Image.network(
                          profileImageSrc,
                          height: 100.0,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctorName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                              color: textColorBlue),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          doctorProfession,
                          style: const TextStyle(
                              color: grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: shadowIconBlue,
                                  radius: 13.0,
                                  child: Icon(
                                    Icons.work,
                                    size: 13.0,
                                    color: iconColorBlue,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Text(
                                  yearOfExperience,
                                  style: const TextStyle(color: grey),
                                ),
                              ],
                            ),
                            const SizedBox(width: 10.0),
                            Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: shadowIconPink,
                                  radius: 13.0,
                                  child: Icon(
                                    Icons.favorite,
                                    size: 13.0,
                                    color: iconColorPink,
                                  ),
                                ),
                                const SizedBox(width: 10.0),
                                Text(
                                  likeablePercentage,
                                  style: const TextStyle(color: grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        bottomPadding ? const SizedBox(height: 20.0) : const SizedBox(height: 0.0),
                      ],
                    ),
                  ],
                ),
                isButtonVisible ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total fee',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: grey,
                              fontSize: 13.0),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          '\$$costOfService',
                          style: const TextStyle(
                              color: textColorBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(orangeColor),
                            padding: MaterialStateProperty.all(
                              const EdgeInsets.only(top: 16.0, bottom: 16.0),
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(32.0)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BookAppointment()));
                        },
                        child: const Text('Make an appointment'),
                      ),
                    ),
                  ],
                ) : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
