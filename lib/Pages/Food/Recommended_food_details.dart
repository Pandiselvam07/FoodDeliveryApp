import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/App_icons.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Expandable_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.clear),
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
                    text: "Parotta",
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
              background: Image.asset(
                "assets/images/Food2.png",
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
                      text:
                          ("Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries.Parotta is one of the popular south indian layered paratha recipe made with maida or plain flour. it is known for its crisp and flaky taste with multiple layers of folded and twisted parotta layers in it. it is generally served with a spicy coconut-based vegetable kurma recipe, but can also be served with choice of north indian curries."),
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
                  text: " ₹20 " + " X " + " 0 ",
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
                        BigTexts(text: " ₹20 " + "| Add to cart"),
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
