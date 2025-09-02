import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: GestureDetector(onTap: onTap, child: Icon(Icons.arrow_back_ios)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
