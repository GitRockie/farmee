import 'package:farmee_app/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularHarvestRepo extends GetxService {
  final ApiClient apiClient;
  PopularHarvestRepo({required this.apiClient});

  Future<Response> getPopularHarvestList() async {
    return await apiClient.getData('endpoint url');
  }
}
