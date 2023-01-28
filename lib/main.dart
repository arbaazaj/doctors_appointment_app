import 'package:doctors_appointment_app/screens/homepage.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doc-o-point',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(
          primary: mainColor,
        ),
      ),
      home: const HomePage(title: 'Doctor Appointment'),
    );
  }
}
