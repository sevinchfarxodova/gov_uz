import 'package:flutter/material.dart';
import '../../../../constats/appcolors.dart';
import '../widgets/menu_item.dart';

class SiteMapModal extends StatelessWidget {
  const SiteMapModal({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      maxChildSize: 0.9,
      minChildSize: 0.5,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sayt xaritasi",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const Divider(color: Colors.white),
              Expanded(
                child: ListView(
                  controller: scrollController,
                  children: const [
                    MenuItem(title: "-  UMUMIY MA'LUMOT", isBold: true),
                    MenuItem(title: "Davlat hokimiyati"),
                    MenuItem(title: "Prezident"),
                    MenuItem(title: "Davlat ramzlari"),
                    MenuItem(title: "O‘zbekiston — 2030 strategiyasi"),
                    MenuItem(title: "Davlat xaridlari"),
                    MenuItem(title: "Geografik joylashuvi"),
                    MenuItem(title: "Hudud"),
                    MenuItem(title: "Aholi"),
                    MenuItem(title: "Ob-havo"),
                    MenuItem(title: "Elektron ishtirok"),
                    MenuItem(title: "Ko‘chmas mulk obyektlari"),
                    MenuItem(title: "Kommunal xo‘jalik va uy-joy fondi"),
                    MenuItem(title: "Elektron litsenziyalash tizimi"),
                    MenuItem(title: "Davlat-xususiy sheriklik"),
                    MenuItem(title: "Korrupsiyaga qarshi kurash"),

                    MenuItem(title: "-  HUKUMAT", isBold: true),
                    MenuItem(title: "Davlat hokimiyati"),
                    MenuItem(title: "Prezident"),
                    MenuItem(title: "Davlat ramzlari"),
                    MenuItem(title: "O‘zbekiston — 2030 strategiyasi"),
                    MenuItem(title: "Davlat xaridlari"),
                    MenuItem(title: "Geografik joylashuvi"),
                    MenuItem(title: "Hudud"),
                    MenuItem(title: "Aholi"),
                    MenuItem(title: "Ob-havo"),
                    MenuItem(title: "Elektron ishtirok"),
                    MenuItem(title: "Ko‘chmas mulk obyektlari"),
                    MenuItem(title: "Kommunal xo‘jalik va uy-joy fondi"),
                    MenuItem(title: "Elektron litsenziyalash tizimi"),
                    MenuItem(title: "Davlat-xususiy sheriklik"),
                    MenuItem(title: "Korrupsiyaga qarshi kurash"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
