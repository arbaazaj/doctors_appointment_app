import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:doctors_appointment_app/widgets/custom_app_bar.dart';
import 'package:doctors_appointment_app/widgets/custom_bottom_navbar_widget.dart';
import 'package:doctors_appointment_app/widgets/news_card_widget.dart';
import 'package:doctors_appointment_app/widgets/services_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const CustomAppBar(),
      bottomNavigationBar: CustomBottomNavBarWidget(
        onTap: selectedTab,
        currentIndex: currentIndex,
      ),
      body: buildMainBody(context),
    );
  }

  Column buildMainBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTopView(context),
        const Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15.0),
                ServicesCard(),
                SizedBox(height: 15.0),
                NewsCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildTopView(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180.0,
      color: mainColor,
      child: Column(
        children: [
          SearchBar(controller: searchController),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: CalendarTimeline(
              monthColor: Colors.white,
              activeDayColor: mainColor,
              dayColor: Colors.white,
              activeBackgroundDayColor: Colors.white,
              shrink: true,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2099),
              onDateSelected: onDateSelected,
            ),
          ),
        ],
      ),
    );
  }

  void onDateSelected(DateTime p1) {}

  void selectedTab(int value) {
    setState(() {
      currentIndex = value;
    });
  }
}
