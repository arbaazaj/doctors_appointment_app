import 'package:doctors_appointment_app/models/doctor.dart';
import 'package:doctors_appointment_app/screens/book_appointment.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/doctors_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/search_bar_widget.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final _searchBoxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainColor,
        elevation: 2.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text(
          'DOCTORS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: SearchBarWidget(searchBoxController: _searchBoxController),
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return DoctorsCard(
            cardTitle: '',
            trailingText: 'See More',
            profileImageSrc: doctor.profileImageSrc,
            doctorName: doctor.name,
            doctorProfession: doctor.profession,
            yearOfExperience: doctor.yearOfExperience,
            likeablePercentage: doctor.likeablePercentage,
            costOfService: doctor.fee,
            spaceHeightBetweenCards: 16.0,
            isCardTitleEnabled: false,
            isButtonVisible: true,
            bottomPadding: true,
            onPressed: () {
              Get.to(() => BookAppointment(doctor: doctor));
            },
          );
        },
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       const DoctorsCard(
      //         bottomPadding: true,
      //         isButtonVisible: true,
      //         isCardTitleEnabled: true,
      //         spaceHeightBetweenCards: 15.0,
      //         cardTitle: 'DOCTOR NEARBY',
      //         trailingText: 'SEE ALL',
      //         profileImageSrc:
      //             'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
      //         doctorName: 'Darrell Steward',
      //         doctorProfession: 'General Practitioner',
      //         yearOfExperience: '3 years',
      //         likeablePercentage: '92%',
      //         costOfService: 150,
      //       ),
      //       const DoctorsCard(
      //         bottomPadding: true,
      //         isButtonVisible: true,
      //         isCardTitleEnabled: true,
      //         spaceHeightBetweenCards: 15.0,
      //         cardTitle: 'RECOMMENDED',
      //         trailingText: 'SEE ALL',
      //         profileImageSrc:
      //             'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=2000',
      //         doctorName: 'Alexa Baldwin',
      //         doctorProfession: 'Neurosurgeon',
      //         yearOfExperience: '5 years',
      //         likeablePercentage: '87%',
      //         costOfService: 250,
      //       ),
      //       Container(
      //         color: Colors.white,
      //         child: const Padding(
      //           padding: EdgeInsets.only(left: 28.0, right: 28.0),
      //           child: Divider(thickness: 2.0),
      //         ),
      //       ),
      //       const DoctorsCard(
      //         bottomPadding: true,
      //         isButtonVisible: true,
      //         isCardTitleEnabled: false,
      //         spaceHeightBetweenCards: 0.0,
      //         cardTitle: '',
      //         trailingText: '',
      //         profileImageSrc:
      //             'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      //         doctorName: 'Suraj Sinha',
      //         doctorProfession: 'Cardiologist',
      //         yearOfExperience: '6 years',
      //         likeablePercentage: '95%',
      //         costOfService: 200,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
