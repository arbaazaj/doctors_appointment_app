import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'DAILY UPDATE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: textColorBlue),
                  ),
                  Text(
                    ':',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: textColorBlue),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Symptoms of Covid to watch out for',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: textColorBlue),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'August 09 ● 08.23 AM',
                          style: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Image.network(
                    'https://picsum.photos/200',
                    fit: BoxFit.fill,
                    width: 120.0,
                    height: 80.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
