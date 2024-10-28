import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color buttonBackgroundColor;
  final String imagePath;
  final String buttonText;
  final Color textColor;
  final double buttonWidth;
  final double? iconHeight;
  final double? iconWidth;
  final void Function() onPressed;
  const CustomElevatedButton({
    super.key,
    required this.buttonBackgroundColor,
    required this.imagePath,
    required this.buttonText,
    required this.textColor,
    required this.buttonWidth,
    required this.onPressed,
    this.iconHeight,
    this.iconWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonBackgroundColor, // button background color
      ),
      child: SizedBox(
        width: buttonWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  imagePath, // change this path
                  width: iconWidth ?? 20, // change width
                  height: iconHeight ?? 20, // change height
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                buttonText, // change this text
                style: TextStyle(color: textColor), // change text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
