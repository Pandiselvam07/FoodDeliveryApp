import 'package:food_delivery/Pages/Food/Popular_food_details.dart';
import 'package:food_delivery/Pages/Food/Recommended_food_details.dart';
import 'package:food_delivery/Pages/Home/Main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static String getInitial() => initial;

  static const String popularFood = "/popular-food";
  static String getPopularFood(int pageId) => '$popularFood?pageId=$pageId';

  static const String recommendedFood = "/recommended-food";
  static String getRecommendedFood(int pageId) =>
      '$recommendedFood?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => const MainFoodPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetails(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetails(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn),
  ];
}
