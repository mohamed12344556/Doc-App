import 'package:flutter/material.dart';

// ignore: camel_case_types
class buildTitleAndName extends StatelessWidget {
  const buildTitleAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Text(
            'Ana De Arm',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
