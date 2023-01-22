import 'package:farmee_app/controllers/popular_harvest_controller.dart';
import 'package:farmee_app/pages/farm/popular_farm_detail.dart';
import 'package:farmee_app/pages/farm/recommended_harvest_detail.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Loading dependencies here
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularHarvestController>().getPopularHarvestList;
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ReccommendedHarvest()
        //const MainFarmsPage()
        //const PopularFarmDetail(),
        );
  }
}
