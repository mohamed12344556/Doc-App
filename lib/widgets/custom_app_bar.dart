// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final Widget? title;
  final Widget? leading;
  @override
  final Size preferredSize;

  const CustomAppBar({
    super.key,
    required this.actions,
     this.leading,
     this.title,
    required this.preferredSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 8.0, right: 8.0),
      child: AppBar(
        title: title,
        leading: leading,
        elevation: 0,
        actions: actions,
      ),
    );
  }
}
