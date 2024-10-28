import 'package:flutter/material.dart';
import 'package:doc_doc_app/widgets/custom_date_piker.dart';
import 'package:doc_doc_app/widgets/custom_rate.dart';

class BuildDoctorCard extends StatelessWidget {
  final Color cardColor;
  final String doctorName;
  final String specialty;
  final String price;
  final String imagePath;
  final double rate;

  const BuildDoctorCard({
    super.key,
    required this.cardColor,
    required this.doctorName,
    required this.specialty,
    required this.price,
    required this.imagePath,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 410,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRate(
                      rate: rate,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  specialty,
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
                Text(
                  doctorName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Per Session',
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: -60,
          child: Image.asset(
            imagePath,
            width: 370,
            height: 370,
          ),
        ),
        Positioned(
          bottom: 5,
          child: CustomDatePicker(),
        ),
      ],
    );
  }
}
