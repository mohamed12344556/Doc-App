import 'package:flutter/material.dart';

class CustomBNBItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const CustomBNBItem(
      {required this.icon, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? const Color(0xFF95D7CF)
            : const Color(0xFF787A71).withOpacity(0.3),
        border: Border.all(
          color: isSelected ? const Color(0xFF95D7CF) : Colors.grey,
        ),
      ),
      child: Icon(
        icon,
        size: 28,
        color: isSelected ? Colors.black : Colors.white,
      ),
    );
  }
}