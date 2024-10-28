import 'package:doc_doc_app/widgets/build_avatar.dart';
import 'package:doc_doc_app/widgets/build_titel_and_name_appbar.dart';
import 'package:doc_doc_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const BuildAvatar(),
        const buildTitleAndName(),
        const Spacer(),
        CustomIconButton(
          icon: Icons.search,
          onPressed: () {},
        ),
        CustomIconButton(
          icon: Icons.notifications_none_outlined,
          onPressed: () {},
        ),
      ],
    );
  }
}
