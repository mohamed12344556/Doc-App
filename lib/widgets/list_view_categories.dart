import 'package:doc_doc_app/widgets/build_categories.dart';
import 'package:flutter/material.dart';

class ListViewCategories extends StatelessWidget {
  const ListViewCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // قائمة الأيقونات
    final List<IconData> icons = [
      Icons.favorite,
      Icons.local_hospital,
      Icons.medical_services,
      Icons.accessibility,
      Icons.healing,
    ];

    // قائمة النصوص
    final List<String> texts = [
      'Heart',
      'Hospital',
      'Services',
      'Accessibility',
      'Healing',
    ];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: icons.length,
      itemBuilder: (context, index) {
        return BuildCategories(
          icon: icons[index],
          text: texts[index],
          onPressed: () {},
        );
      },
    );
  }
}
