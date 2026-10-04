import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'there is an Error',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
