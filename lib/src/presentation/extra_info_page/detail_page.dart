import 'package:flutter/material.dart';
import '../../../constats/appcolors.dart';
import '../../data/models/malumotlar_model.dart';

class DetailInfoPage extends StatelessWidget {
  final Infos infos;

  DetailInfoPage({super.key, required this.infos});

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
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                infos.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: AppColors.blue,
                ),
              ),
              Image.asset(infos.imageURL, width: 600, height: 300),
              Center(
                child: Text(
                  infos.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Text(
                infos.description2,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 60),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 10,
                      children: [
                        contactItem(Icons.phone, "+99871 241-01-15"),
                        contactItem(Icons.email, "info@xtv.uz"),
                        contactItem(Icons.language, "gov.uz/uzedu"),
                        contactItem(
                          Icons.access_time,
                          "Chorshanba 16:00 - 18:00",
                        ),
                        socialIcons(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget contactItem(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.blue, size: 20),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }

  Widget socialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.share, color: AppColors.blue, size: 24),
        const SizedBox(width: 10),
        socialIcon(Icons.facebook),
        const SizedBox(width: 10),
        socialIcon(Icons.telegram_sharp),
      ],
    );
  }

  Widget socialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: AppColors.blue, shape: BoxShape.circle),
      child: Icon(icon, color: Colors.white, size: 24),
    );
  }
}
