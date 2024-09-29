import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/Pages/Food/Popular_food_details.dart';
import 'package:food_delivery/Pages/Food/Recommended_food_details.dart';
import 'package:food_delivery/Pages/Home/Main_food_page.dart';
import 'package:get/get.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Color(0xFF89dad0),
  //   systemNavigationBarColor: Color(0xFF89dad0),
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const RecommendedFoodDetails(),
    );
  }
}
