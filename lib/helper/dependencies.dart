import 'package:e_commerce/controllers/popular_product_controller.dart';
import 'package:e_commerce/data/api/api_client.dart';
import 'package:e_commerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://"));

  //repos
  Get.lazyPut(() => PopulaProductRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(() => PopularProductController(populaProductRepo: Get.find()));
}
