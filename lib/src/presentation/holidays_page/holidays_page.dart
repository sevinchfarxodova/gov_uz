import 'package:flutter/material.dart';
import 'package:gov_uz/src/presentation/holidays_page/widgets/app_bar.dart';
import 'package:gov_uz/src/presentation/holidays_page/widgets/holidays_container.dart';
import 'package:gov_uz/src/presentation/holidays_page/widgets/holidays_header.dart';
import '../../data/models/bayramlar_models.dart';
import '../extra_info_page/widgets/custom_drawer.dart';

class HolidaysPage extends StatelessWidget {
   HolidaysPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: HolidaysAppbar(),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          EventsHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 8,
                  childAspectRatio: 3.9,
                ),
                itemCount: bayramlarList.length,
                itemBuilder: (BuildContext context, int index) {
                  return HolidaysContainer(bayramlar: bayramlarList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
