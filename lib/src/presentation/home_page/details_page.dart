import 'package:flutter/material.dart';
import 'package:gov_uz/constats/appcolors.dart';
import 'package:gov_uz/src/data/models/uzb_madaniyat_model.dart';

class DetailPage extends StatelessWidget {
  final UzbMadaniyat uzbMadaniyat;

  const DetailPage({super.key, required this.uzbMadaniyat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "O'zbekiston Respublikasi\nHukumat Portali",
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [Image.asset("assets/images/gerb.png", height: 50)],

      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 18,),
            Text(
              uzbMadaniyat.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: AppColors.blue,
              ),
            ),
            SizedBox(height: 18,),
            Image.asset(uzbMadaniyat.imageURL, width: 400, height: 200),
            SizedBox(height: 16),
            Text(
              uzbMadaniyat.description2,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 180),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.remove_red_eye, color: AppColors.blue),
                SizedBox(width: 8),
                Text("53007"),
                SizedBox(width: 270),
                Icon(Icons.facebook, color: AppColors.blue),
                Icon(Icons.telegram, color: AppColors.blue),
                Icon(Icons.g_mobiledata_sharp, color: AppColors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
