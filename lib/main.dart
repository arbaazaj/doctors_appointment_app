import 'package:doctors_appointment_app/screens/homepage.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doc-o-point',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
            letterSpacing: 1.0
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: mainColor,
          elevation: 2.0,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(
          primary: mainColor,
        ),
      ),
      home: const HomePage(title: 'Doctor Appointment'),
    );
  }
}
