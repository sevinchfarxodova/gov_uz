import 'package:flutter/material.dart';
import '../../../../constats/appcolors.dart';
import 'drawer_menu_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drawer Header with Close Button
          Container(
            color: Colors.white, // Ensure this is properly defined!
            padding: const EdgeInsets.only(top: 50, right: 20),
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.close, color: AppColors.blue, size: 30, ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          // List of Drawer Items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                DrawerMenuItem(title: "VAZIRLIKLAR", onTap: () {}),
                DrawerMenuItem(title: "QO‘MITALAR", onTap: () {}),
                DrawerMenuItem(title: "AGENTLIKLAR", onTap: () {}),
                DrawerMenuItem(title: "INSPEKSIYALAR", onTap: () {}),
                DrawerMenuItem(title: "HOKIMIYATLAR", onTap: () {}),
                DrawerMenuItem(title: "JAMG‘ARMALAR", onTap: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
