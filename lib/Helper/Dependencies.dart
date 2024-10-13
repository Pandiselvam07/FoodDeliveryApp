import 'package:food_delivery/Controller/Popular_product_controller.dart';
import 'package:food_delivery/Controller/Recommended_product_controller.dart';
import 'package:food_delivery/Data/Api/Api_client.dart';
import 'package:food_delivery/Data/Repository/Popular_product_repo.dart';
import 'package:food_delivery/Data/Repository/Recommended_product_repo.dart';
import 'package:food_delivery/Utilities/App_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.baseUrl));
  //Repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  //Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
