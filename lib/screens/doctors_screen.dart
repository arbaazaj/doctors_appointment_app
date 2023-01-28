import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/doctors_card_widget.dart';
import 'package:doctors_appointment_app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 2.0,
        title: const Text('DOCTORS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32.0),
            child: SearchBar(controller: searchController),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const DoctorsCard(
              isCardTitleEnabled: true,
              spaceHeightBetweenCards: 15.0,
              cardTitle: 'DOCTOR NEARBY',
              trailingText: 'SEE ALL',
              profileImageSrc:
                  'https://st3.depositphotos.com/3332767/18889/i/600/depositphotos_188896398-stock-photo-close-young-doctor-looking-camera.jpg',
              doctorName: 'Darrell Steward',
              doctorProfession: 'General Practitioner',
              yearOfExperience: '3 years',
              likeablePercentage: '92%',
              costOfService: 150,
            ),
            const DoctorsCard(
              isCardTitleEnabled: true,
              spaceHeightBetweenCards: 15.0,
              cardTitle: 'RECOMMENDED',
              trailingText: 'SEE ALL',
              profileImageSrc:
                  'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg?w=2000',
              doctorName: 'Alexa Baldwin',
              doctorProfession: 'Neurosurgeon',
              yearOfExperience: '5 years',
              likeablePercentage: '87%',
              costOfService: 250,
            ),
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0),
                child: Divider(thickness: 2.0),
              ),
            ),
            const DoctorsCard(
              isCardTitleEnabled: false,
              spaceHeightBetweenCards: 0.0,
              cardTitle: '',
              trailingText: '',
              profileImageSrc:
                  'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZG9jdG9yfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
              doctorName: 'Suraj Sinha',
              doctorProfession: 'Cardiologist',
              yearOfExperience: '6 years',
              likeablePercentage: '95%',
              costOfService: 200,
            ),
          ],
        ),
      ),
    );
  }
}
