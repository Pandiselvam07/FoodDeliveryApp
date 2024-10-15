import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/Popular_product_controller.dart';
import 'package:food_delivery/Pages/Home/Main_food_page.dart';
import 'package:food_delivery/Route/Route_helper.dart';
import 'package:food_delivery/Utilities/App_constants.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/App_column.dart';
import 'package:food_delivery/Widgets/App_icons.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Expandable_text_widget.dart';
import 'package:food_delivery/Widgets/Icon_and_text_widget.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';
import 'package:get/get.dart';

class PopularFoodDetails extends StatelessWidget {
  int pageId;
  PopularFoodDetails({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AppConstants.baseUrl +
                      AppConstants.uploadUrl +
                      product.img!),
                ),
              ),
            ),
          ),
          //Icon
          Positioned(
            top: Dimensions.height50,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.initial);
                  },
                  child: AppIcons(icon: Icons.arrow_back),
                ),
                const AppIcons(icon: Icons.shopping_cart)
              ],
            ),
          ),
          //Introduction
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 25,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: product.name!),
                  SizedBox(height: Dimensions.height20),
                  BigTexts(text: "Introduce"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description!),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width30,
          right: Dimensions.width30,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius30),
              topRight: Radius.circular(Dimensions.radius30),
            ),
            color: AppColors.buttonBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height5,
                bottom: Dimensions.height5,
                left: Dimensions.width10,
                right: Dimensions.width10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.remove, color: AppColors.singColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigTexts(text: '0'),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.singColor),
                ],
              ),
            ),
            Container(
                height: Dimensions.height40,
                margin: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius10),
                  color: AppColors.mainColor,
                ),
                child: Row(
                  children: [
                    SizedBox(width: Dimensions.width10),
                    BigTexts(text: " \$ ${product.price!}  |Add to cart"),
                    SizedBox(width: Dimensions.width10),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
