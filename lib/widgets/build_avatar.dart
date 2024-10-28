import 'package:flutter/material.dart';

class BuildAvatar extends StatelessWidget {
  const BuildAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage(
        'assets/images/profile.jpg',
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
