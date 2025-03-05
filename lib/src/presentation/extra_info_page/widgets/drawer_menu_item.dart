import 'package:flutter/material.dart';

import '../../../../constats/appcolors.dart';

class DrawerMenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DrawerMenuItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 20, color: AppColors.blue),
      onTap: onTap,
    );
  }
}
