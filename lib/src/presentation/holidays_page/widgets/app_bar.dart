import 'package:flutter/material.dart';
import '../../../../constats/appcolors.dart';

class HolidaysAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(70);

  HolidaysAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "VOQEALAR TAQVIMI",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.blue,
        ),
      ),
      centerTitle: true,
      leading: Builder(
        builder: (context) => Container(
          color: Colors.blue.shade900,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white, size: 22),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      actions: [
        Image.asset("assets/images/gerb.png", height: 50),
      ],
    );
  }
}
