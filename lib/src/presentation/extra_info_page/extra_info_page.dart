import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gov_uz/constats/appcolors.dart';
import 'package:gov_uz/src/data/models/malumotlar_model.dart';
import 'package:gov_uz/src/presentation/extra_info_page/widgets/custom_drawer.dart';
import 'package:gov_uz/src/presentation/extra_info_page/widgets/infos_container.dart';

class ExtraInfoPage extends StatelessWidget {
   ExtraInfoPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Qos'himcha malumotlar ",
          style: TextStyle(
            fontSize: 24,
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Container(
          color: Colors.blue.shade900,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
        ),
        centerTitle: true,
        actions: [Image.asset("assets/images/gerb.png", height: 50)],
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: infosList.length,
          itemBuilder: (BuildContext context, int index) {
            return InfosContainer(infos: infosList[index]);
          },
        ),
      ),
    );
  }
}
