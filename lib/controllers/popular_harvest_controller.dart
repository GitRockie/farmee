import 'package:farmee_app/data/repository/popular_harvest_repo.dart';
import 'package:get/get.dart';

class PopularHarvestController extends GetxController {
  final PopularHarvestRepo popularHarvestRepo;
  PopularHarvestController({required this.popularHarvestRepo});

  List<dynamic> _popularHarvestList = [];
  List<dynamic> get popularHarvestList => _popularHarvestList;

  Future<void> getPopularHarvestList() async {
    Response response = await popularHarvestRepo.getPopularHarvestList();
    if (response.statusCode == 200) {
      _popularHarvestList = [];
      //_popularHarvestList.addAll();
      update();
    } else {}
  }
}
