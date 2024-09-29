import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Home/Food_page_body.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Showing header
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height50, bottom: Dimensions.height15),
            padding: EdgeInsets.only(
                left: Dimensions.width13, right: Dimensions.width13),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BigTexts(
                        text: "Country name",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallTexts(
                            text: "City name",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width40,
                      height: Dimensions.height40,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius10),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Showing the body
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          )
        ],
      ),
    );
  }
}
