import 'package:flutter/material.dart';
import 'package:gov_uz/src/data/models/uzb_madaniyat_model.dart';
import 'package:gov_uz/src/presentation/home_page/widgets/app_bar.dart';
import 'package:gov_uz/src/presentation/home_page/widgets/madaniyat_infos_container.dart';
import 'package:gov_uz/src/presentation/home_page/widgets/search_widget.dart';
import '../../../constats/appcolors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<UzbMadaniyat> filteredList = madaniyatList;

  void _filterMadaniyat(String query) {
    setState(() {
      filteredList =
          madaniyatList
              .where(
                (item) =>
                    item.title.toLowerCase().contains(query.toLowerCase()) ||
                    item.description.toLowerCase().contains(
                      query.toLowerCase(),
                    ),
              )
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBarWidget(
            controller: searchController,
            onChanged: _filterMadaniyat,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Center(
              child: Text(
                "Madaniyatlarimiz",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  filteredList.isEmpty
                      ? const Center(
                        child: Text(
                          "Hech narsa topilmadi",
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                      )
                      : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 2.5,
                            ),
                        itemCount: filteredList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MadaniyatInfosContainer(
                            uzbMadaniyat: filteredList[index],
                          );
                        },
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
