import 'package:flutter/material.dart';
import 'package:gov_uz/src/data/models/uzb_madaniyat_model.dart';
import 'package:gov_uz/src/presentation/home_page/widgets/search_widget.dart';
import 'madaniyat_infos_container.dart';

class MadaniyatList extends StatefulWidget {
  const MadaniyatList({super.key});

  @override
  _MadaniyatListState createState() => _MadaniyatListState();
}

class _MadaniyatListState extends State<MadaniyatList> {
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
    return Column(
      children: [
        SearchBarWidget(
          controller: searchController,
          onChanged: _filterMadaniyat,
        ),
        Expanded(
          child:
              filteredList.isEmpty
                  ? const Center(
                    child: Text(
                      "Hech narsa topilmadi",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  )
                  : ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      return MadaniyatInfosContainer(
                        uzbMadaniyat: filteredList[index],
                      );
                    },
                  ),
        ),
      ],
    );
  }
}
