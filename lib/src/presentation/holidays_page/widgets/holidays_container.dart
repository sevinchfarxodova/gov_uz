import 'package:flutter/material.dart';
import 'package:gov_uz/src/data/models/bayramlar_models.dart';
import 'package:gov_uz/src/presentation/holidays_page/holiday_details.dart';

import '../../../../constats/appcolors.dart';

class HolidaysContainer extends StatelessWidget {
  final BayramlarModel bayramlar;

  HolidaysContainer({super.key, required this.bayramlar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => HolidayDetails(bayramlarModel: bayramlar),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              children:  [
                Text(
                  bayramlar.day,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
                Text(
                  bayramlar.month,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
             Text(
              bayramlar.description,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
