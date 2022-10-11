import 'package:e_commerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxService {
  final PopulaProductRepo populaProductRepo;
  PopularProductController({required this.populaProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get PopulaProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await populaProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      //update();
    } else {}
  }
}
