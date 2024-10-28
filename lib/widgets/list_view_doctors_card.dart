import 'package:doc_doc_app/views/details_view.dart';
import 'package:doc_doc_app/widgets/build_doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  DoctorListView({super.key});

  final List<Color> cardColors = [
    const Color(0xFFFF204E),
    const Color(0xFFA0153E),
    const Color(0xFF5D0E41),
    const Color(0xFF00224D),
  ];

  // doctor name list
  final List<String> doctorNames = [
    'Dr. Ana\n De Armes',
    'Dr. John\n Doe',
    'Dr. Sarah\n Connor',
    'Dr. Emily\n Smith',
    'Dr. Michael\n Brown',
  ];
  // specialties list
  final List<String> specialties = [
    'Heart Expert',
    'Neurologist',
    'Orthopedic Surgeon',
    'Pediatrician',
    'Dermatologist',
  ];

  // price list
  final List<String> prices = [
    '130',
    '150',
    '120',
    '100',
    '140',
  ];

  // image list
  final List<String> images = [
    'assets/images/doctor1.png',
    'assets/images/doctor2.webp',
    'assets/images/doctor3.png',
    'assets/images/doctor4.png',
    'assets/images/doctor5.png',
  ];

// rate list
  final List<String> rates = [
    '4.9',
    '3',
    '2.7',
    '4.6',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardColors.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailsView.id,
                arguments: {
                  'cardColor': cardColors[index],
                  'doctorName': doctorNames[index],
                  'specialty': specialties[index],
                  'price': prices[index],
                  'imagePath': images[index],
                  'rate': double.parse(rates[index]),
                },
              );
            },
            child: BuildDoctorCard(
              cardColor: cardColors[index],
              doctorName: doctorNames[index],
              specialty: specialties[index],
              price: prices[index],
              imagePath: images[index],
              rate: double.parse(rates[index]),
            ),
          ),
        );
      },
    );
  }
}
