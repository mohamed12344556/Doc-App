import 'package:flutter/material.dart';

class BuildCategories extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function() onPressed;
  const BuildCategories({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(icon, color: Colors.black),
            ),
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
