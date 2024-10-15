import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/Controller/Popular_product_controller.dart';
import 'package:food_delivery/Controller/Recommended_product_controller.dart';
import 'package:food_delivery/Pages/Food/Popular_food_details.dart';
import 'package:food_delivery/Pages/Food/Recommended_food_details.dart';
import 'package:food_delivery/Pages/Home/Food_page_body.dart';
import 'package:food_delivery/Pages/Home/Main_food_page.dart';
import 'package:food_delivery/Route/Route_helper.dart';
import 'package:get/get.dart';
import 'package:food_delivery/Helper/Dependencies.dart' as dependencies;

Future<void> main() async {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Color(0xFF89dad0),
  //   systemNavigationBarColor: Color(0xFF89dad0),
  // ));
  WidgetsFlutterBinding.ensureInitialized();
  await dependencies.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().popularProductList;
    Get.find<RecommendedProductController>().recommendedProductList;

    return GetMaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      home: const MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
