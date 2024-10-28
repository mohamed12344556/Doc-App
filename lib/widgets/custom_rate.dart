import 'package:flutter/material.dart';

class CustomRate extends StatelessWidget {
  const CustomRate({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text('$rate'),
          ),
        ),
        const Positioned(
          top: 3,
          left: 27,
          child: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 20,
          ),
        ),
      ],
    );
  }
}
