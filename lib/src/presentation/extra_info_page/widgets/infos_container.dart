import 'package:flutter/material.dart';
import 'package:gov_uz/src/presentation/extra_info_page/detail_page.dart';
import '../../../../constats/appcolors.dart';
import '../../../data/models/malumotlar_model.dart';

class InfosContainer extends StatelessWidget {
  final Infos infos;
  const InfosContainer({super.key, required this.infos});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailInfoPage(infos: infos,)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              infos.icon,
              width: 50,
              height: 50,
             color: AppColors.blue,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  infos.title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  infos.description,
                  style: TextStyle(fontSize: 15, color: AppColors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
