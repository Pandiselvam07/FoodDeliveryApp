import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Icon_and_text_widget.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 12, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? AppColors.iconColor1 : AppColors.iconColor2,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/Food1.png"),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 125,
          margin: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigTexts(
                  text: "Briyani",
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.mainColor,
                          size: 18,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    SmallTexts(text: "4.5"),
                    SizedBox(width: 10),
                    SmallTexts(text: "2426"),
                    SizedBox(width: 5),
                    SmallTexts(text: "comments")
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "normal",
                        iconColor: AppColors.iconColor1),
                    SizedBox(width: 32),
                    IconAndTextWidget(
                        icon: Icons.location_on,
                        text: "0.7 km",
                        iconColor: AppColors.iconColor2),
                    SizedBox(width: 32),
                    IconAndTextWidget(
                        icon: Icons.access_time_rounded,
                        text: "26 min",
                        iconColor: Colors.redAccent)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
