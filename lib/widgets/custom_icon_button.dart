// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFF1F8F8),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon, // change icon color
            color: Colors.black.withOpacity(0.6),
            size: 24,
          ),
        ),
      ),
    );
  }
}
