import 'package:flutter/material.dart';
import 'package:food_delivery/Controller/Recommended_product_controller.dart';
import 'package:food_delivery/Route/Route_helper.dart';
import 'package:food_delivery/Utilities/App_constants.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/App_icons.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Expandable_text_widget.dart';
import 'package:get/get.dart';

class RecommendedFoodDetails extends StatelessWidget {
  int pageId;
  RecommendedFoodDetails({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.toNamed(RouteHelper.getInitial());
                    },
                    child: AppIcons(icon: Icons.clear)),
                AppIcons(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(30),
              child: Container(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                width: double.maxFinite,
                child: Center(
                  child: BigTexts(
                    text: product.name!,
                    size: Dimensions.font20,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius30),
                    topRight: Radius.circular(Dimensions.radius30),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            // snap: false,
            // floating: false,
            expandedHeight: 300,
            // backgroundColor: Color(0xFFFFB6C1),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstants.baseUrl + AppConstants.uploadUrl + product.img!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                    ),
                    child: ExpandableTextWidget(
                      text: product.description!,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width30 * 2.5,
                right: Dimensions.width30 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigTexts(
                  text: " \$ ${product.price!}  X  0 ",
                  color: AppColors.mainBlackColor,
                ),
                AppIcons(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                    size: Dimensions.iconsSize28,
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
                        BigTexts(text: " \$ ${product.price!}  | Add to cart"),
                        SizedBox(width: Dimensions.width10),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
