import 'package:flutter/material.dart';
import '../../../constats/appcolors.dart';
import '../../data/models/bayramlar_models.dart';

class HolidayDetails extends StatelessWidget {
  final BayramlarModel bayramlarModel;

  HolidayDetails({super.key, required this.bayramlarModel});

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              bayramlarModel.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: AppColors.blue,
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Text(
                  bayramlarModel.dateTime,
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),
                Text(
                  "/ Voqealar taqvimi",
                  style: TextStyle(fontSize: 16, color: AppColors.blue),
                ),
              ],
            ),
            SizedBox(height: 18),
            Center(
              child: Text(
                bayramlarModel.descrHoliday,
                style: TextStyle(fontSize: 18), textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 18),

            Center(
              child: Image.asset(
                bayramlarModel.imgUrl,
                width: 300,
                height: 200,
              ),
            ),
            SizedBox(height: 18),

            Center(
              child: Text(
                bayramlarModel.dayDesc,
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: [
                _buildTag("Sog‘liqni saqlash"),
                _buildTag("Turizm va Madaniyat"),
                _buildTag("Huquq va Qonunchilik"),
                _buildTag("Ijtimoiy himoya "),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.facebook, color: Colors.blue.shade900, size: 24),
                    SizedBox(width: 12),
                    Icon(Icons.clear, color: AppColors.blue, size: 24),
                    SizedBox(width: 12),
                    Icon(Icons.send, color: Colors.blue.shade900, size: 24),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.remove_red_eye, color: AppColors.blue),
                    SizedBox(width: 4),
                    Text(
                      "5788",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }




  Widget _buildTag(String text) {
    return Chip(
      label: Text(text, style: TextStyle(fontSize: 14, color: Colors.black)),
      backgroundColor: Colors.grey.shade100,
    );
  }
}
