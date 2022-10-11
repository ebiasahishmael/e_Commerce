import 'package:e_commerce/data/api/api_client.dart';
import 'package:get/get.dart';

class PopulaProductRepo extends GetxService {
  final ApiClient apiClient;

  PopulaProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData("https://www");
  }
}
