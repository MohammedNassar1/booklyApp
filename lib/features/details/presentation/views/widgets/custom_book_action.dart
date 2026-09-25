import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBookAction extends StatelessWidget {
  const CustomBookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99€',
            backgroundColor: Colors.white,
            TextColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free preview',
            backgroundColor: Color(0xffec8365),
            TextColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
