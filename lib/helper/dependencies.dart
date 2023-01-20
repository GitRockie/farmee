import 'package:farmee_app/controllers/popular_harvest_controller.dart';
import 'package:farmee_app/data/api/api_client.dart';
import 'package:farmee_app/data/repository/popular_harvest_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //Api Client
  Get.lazyPut(() => ApiClient(
        appBaseUrl: '',
      ));
  //Repositories
  Get.lazyPut(() => PopularHarvestRepo(apiClient: Get.find()));
  //Controllers
  Get.lazyPut(() => PopularHarvestController(popularHarvestRepo: Get.find()));
}
