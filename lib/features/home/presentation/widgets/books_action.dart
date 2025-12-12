import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/custome_text_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomeButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            buttonColor: Colors.white,
            textColor: Colors.black,
            buttonText: 'Free Preview',
          ),
        ),
        Expanded(
          child: CustomeButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            buttonText: '19.199 EGP',
            buttonColor: Color(0xffEF8262),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
