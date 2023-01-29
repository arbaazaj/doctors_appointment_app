import 'package:doctors_appointment_app/themes/colors.dart';
import 'package:flutter/material.dart';

class PaymentOptionsWidget extends StatefulWidget {
  const PaymentOptionsWidget({super.key});

  @override
  State<PaymentOptionsWidget> createState() => _PaymentOptionsWidgetState();
}

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  String? paymentOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: lightGreyColor),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Radio(
        //         autofocus: true,
        //         activeColor: mainColor,
        //         value: 'Paypal',
        //         groupValue: paymentOption,
        //         onChanged: (value) {
        //           paymentOption = value.toString();
        //         },
        //       ),
        //       const Text(
        //         'Paypal',
        //         style: TextStyle(
        //           color: textColorBlue,
        //           fontSize: 18.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const Spacer(),
        //       Expanded(
        //           child: Image.network(
        //         'https://cdn.pixabay.com/photo/2015/05/26/09/37/paypal-784404_960_720.png',
        //         width: 40.0,
        //         height: 40.0,
        //       )),
        //     ],
        //   ),
        // ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: lightGreyColor)),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: RadioListTile(
                  title: const Text(
                    'Paypal',
                    style: TextStyle(
                      color: textColorBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 'Paypal',
                  groupValue: paymentOption,
                  onChanged: (value) {
                    setState(() {
                      paymentOption = value.toString();
                    });
                  },
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/05/26/09/37/paypal-784404_960_720.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: lightGreyColor)),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: RadioListTile(
                  title: const Text(
                    'Credit card',
                    style: TextStyle(
                      color: textColorBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 'Credit',
                  groupValue: paymentOption,
                  onChanged: (value) {
                    setState(() {
                      paymentOption = value.toString();
                    });
                  },
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(
                    'https://freepngimg.com/download/credit_card/25689-2-major-credit-card-logo-transparent-image.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: lightGreyColor),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Radio(
        //         activeColor: mainColor,
        //         value: 'Credit card',
        //         groupValue: paymentOption,
        //         onChanged: (value) {
        //           setState(() {
        //             paymentOption = value.toString();
        //           });
        //         },
        //       ),
        //       const Text(
        //         'Credit card',
        //         style: TextStyle(
        //           color: textColorBlue,
        //           fontSize: 18.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       const Spacer(),
        //       Expanded(
        //         child: Image.network(
        //           'https://freepngimg.com/download/credit_card/25689-2-major-credit-card-logo-transparent-image.png',
        //           width: 40.0,
        //           height: 40.0,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
